// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:analyzer/src/dart/analysis/driver.dart';
import 'package:analyzer/src/dart/analysis/index.dart';
import 'package:analyzer/src/dart/ast/utilities.dart';
import 'package:analyzer/src/dart/element/element.dart';
import 'package:analyzer/src/dart/element/member.dart';
import 'package:analyzer/src/summary/idl.dart';
import 'package:collection/collection.dart';

Element _getEnclosingElement(CompilationUnitElement unitElement, int offset) {
  var finder = new _ContainingElementFinder(offset);
  unitElement.accept(finder);
  return finder.containingElement;
}

/**
 * Search support for an [AnalysisDriver].
 */
class Search {
  final AnalysisDriver _driver;

  Search(this._driver);

  /**
   * Returns references to the [element].
   */
  Future<List<SearchResult>> references(Element element) async {
    if (element == null) {
      return const <SearchResult>[];
    }

    ElementKind kind = element.kind;
    if (kind == ElementKind.CLASS ||
        kind == ElementKind.COMPILATION_UNIT ||
        kind == ElementKind.CONSTRUCTOR ||
        kind == ElementKind.FUNCTION_TYPE_ALIAS ||
        kind == ElementKind.SETTER) {
      return _searchReferences(element);
    } else if (kind == ElementKind.GETTER) {
      return _searchReferences_Getter(element);
    } else if (kind == ElementKind.FIELD ||
        kind == ElementKind.TOP_LEVEL_VARIABLE) {
      return _searchReferences_Field(element);
    } else if (kind == ElementKind.FUNCTION || kind == ElementKind.METHOD) {
      if (element.enclosingElement is ExecutableElement) {
        return _searchReferences_Local(element, (n) => n is Block);
      }
      return _searchReferences_Function(element);
    } else if (kind == ElementKind.LABEL ||
        kind == ElementKind.LOCAL_VARIABLE) {
      return _searchReferences_Local(element, (n) => n is Block);
    } else if (kind == ElementKind.PARAMETER) {
      return _searchReferences_Parameter(element);
    } else if (kind == ElementKind.PREFIX) {
      return _searchReferences_Prefix(element);
    } else if (kind == ElementKind.TYPE_PARAMETER) {
      return _searchReferences_Local(
          element, (n) => n.parent is CompilationUnit);
    }
    // TODO(scheglov) support other kinds
    return const <SearchResult>[];
  }

  Future<Null> _addResults(List<SearchResult> results, Element element,
      Map<IndexRelationKind, SearchResultKind> relationToResultKind) async {
    String path = element.source.fullName;

    // If the file with the element is not known, then the element is not used.
    if (!_driver.knownFiles.contains(path)) {
      return;
    }

    // TODO(scheglov) optimize for private elements
    String name = element.displayName;

    // Prepare the list of files that reference the element name.
    List<String> files = await _driver.getFilesReferencingName(name);
    if (!files.contains(path) && _driver.addedFiles.contains(path)) {
      files.add(path);
    }

    // Check the index of every file that references the element name.
    for (String file in files) {
      IndexResult result = await _driver.getIndex(file);
      _IndexRequest request = new _IndexRequest(result.index);
      int elementId = request.findElementId(element);
      if (elementId != -1) {
        CompilationUnitElement unitElement = result.unitElement;
        List<SearchResult> fileResults =
            request.getRelations(elementId, relationToResultKind, unitElement);
        results.addAll(fileResults);
      }
    }
  }

  Future<List<SearchResult>> _searchReferences(Element element) async {
    List<SearchResult> results = <SearchResult>[];
    await _addResults(results, element,
        {IndexRelationKind.IS_REFERENCED_BY: SearchResultKind.REFERENCE});
    return results;
  }

  Future<List<SearchResult>> _searchReferences_Field(
      PropertyInducingElement field) async {
    List<SearchResult> results = <SearchResult>[];
    PropertyAccessorElement getter = field.getter;
    PropertyAccessorElement setter = field.setter;
    if (!field.isSynthetic) {
      await _addResults(results, field, {
        IndexRelationKind.IS_WRITTEN_BY: SearchResultKind.WRITE,
        IndexRelationKind.IS_REFERENCED_BY: SearchResultKind.REFERENCE
      });
    }
    if (getter != null) {
      await _addResults(results, getter, {
        IndexRelationKind.IS_REFERENCED_BY: SearchResultKind.READ,
        IndexRelationKind.IS_INVOKED_BY: SearchResultKind.INVOCATION
      });
    }
    if (setter != null) {
      await _addResults(results, setter,
          {IndexRelationKind.IS_REFERENCED_BY: SearchResultKind.WRITE});
    }
    return results;
  }

  Future<List<SearchResult>> _searchReferences_Function(Element element) async {
    if (element is Member) {
      element = (element as Member).baseElement;
    }
    List<SearchResult> results = <SearchResult>[];
    await _addResults(results, element, {
      IndexRelationKind.IS_REFERENCED_BY: SearchResultKind.REFERENCE,
      IndexRelationKind.IS_INVOKED_BY: SearchResultKind.INVOCATION
    });
    return results;
  }

  Future<List<SearchResult>> _searchReferences_Getter(
      PropertyAccessorElement getter) async {
    List<SearchResult> results = <SearchResult>[];
    await _addResults(results, getter, {
      IndexRelationKind.IS_REFERENCED_BY: SearchResultKind.REFERENCE,
      IndexRelationKind.IS_INVOKED_BY: SearchResultKind.INVOCATION
    });
    return results;
  }

  Future<List<SearchResult>> _searchReferences_Local(
      Element element, bool isRootNode(AstNode n)) async {
    String path = element.source.fullName;
    if (!_driver.addedFiles.contains(path)) {
      return const <SearchResult>[];
    }

    // Prepare the unit.
    AnalysisResult analysisResult = await _driver.getResult(path);
    CompilationUnit unit = analysisResult.unit;
    if (unit == null) {
      return const <SearchResult>[];
    }

    // Prepare the node.
    AstNode node = new NodeLocator(element.nameOffset).searchWithin(unit);
    if (node == null) {
      return const <SearchResult>[];
    }

    // Prepare the enclosing node.
    AstNode enclosingNode = node.getAncestor(isRootNode);
    if (enclosingNode == null) {
      return const <SearchResult>[];
    }

    // Find the matches.
    _LocalReferencesVisitor visitor =
        new _LocalReferencesVisitor(element, unit.element);
    enclosingNode.accept(visitor);
    return visitor.results;
  }

  Future<List<SearchResult>> _searchReferences_Parameter(
      ParameterElement parameter) async {
    List<SearchResult> results = <SearchResult>[];
    results.addAll(await _searchReferences(parameter));
    results.addAll(await _searchReferences_Local(parameter, (AstNode node) {
      AstNode parent = node.parent;
      return parent is ClassDeclaration || parent is CompilationUnit;
    }));
    return results;
  }

  Future<List<SearchResult>> _searchReferences_Prefix(
      PrefixElement element) async {
    // Search only in drivers to which the library with the prefix was added.
    String path = element.source.fullName;
    if (!_driver.addedFiles.contains(path)) {
      return const <SearchResult>[];
    }

    List<SearchResult> results = <SearchResult>[];
    LibraryElement libraryElement = element.library;
    for (CompilationUnitElement unitElement in libraryElement.units) {
      String unitPath = unitElement.source.fullName;
      AnalysisResult unitAnalysisResult = await _driver.getResult(unitPath);
      _LocalReferencesVisitor visitor =
          new _LocalReferencesVisitor(element, unitElement);
      unitAnalysisResult.unit.accept(visitor);
      results.addAll(visitor.results);
    }
    return results;
  }
}

/**
 * A single search result.
 */
class SearchResult {
  /**
   * The element that is used at this result.
   */
  final Element element;

  /**
   * The deep most element that contains this result.
   */
  final Element enclosingElement;

  /**
   * The kind of the [element] usage.
   */
  final SearchResultKind kind;

  /**
   * The offset relative to the beginning of the containing file.
   */
  final int offset;

  /**
   * The length of the usage in the containing file context.
   */
  final int length;

  /**
   * Is `true` if a field or a method is using with a qualifier.
   */
  final bool isResolved;

  /**
   * Is `true` if the result is a resolved reference to [element].
   */
  final bool isQualified;

  SearchResult._(this.element, this.enclosingElement, this.kind, this.offset,
      this.length, this.isResolved, this.isQualified);

  @override
  String toString() {
    StringBuffer buffer = new StringBuffer();
    buffer.write("SearchResult(kind=");
    buffer.write(kind);
    buffer.write(", enclosingElement=");
    buffer.write(enclosingElement);
    buffer.write(", offset=");
    buffer.write(offset);
    buffer.write(", length=");
    buffer.write(length);
    buffer.write(", isResolved=");
    buffer.write(isResolved);
    buffer.write(", isQualified=");
    buffer.write(isQualified);
    buffer.write(")");
    return buffer.toString();
  }
}

/**
 * The kind of reference in a [SearchResult].
 */
enum SearchResultKind { READ, READ_WRITE, WRITE, INVOCATION, REFERENCE }

/**
 * A visitor that finds the deep-most [Element] that contains the [offset].
 */
class _ContainingElementFinder extends GeneralizingElementVisitor {
  final int offset;
  Element containingElement;

  _ContainingElementFinder(this.offset);

  visitElement(Element element) {
    if (element is ElementImpl) {
      if (element.codeOffset != null &&
          element.codeOffset <= offset &&
          offset <= element.codeOffset + element.codeLength) {
        containingElement = element;
        super.visitElement(element);
      }
    }
  }
}

class _IndexRequest {
  final AnalysisDriverUnitIndex index;

  _IndexRequest(this.index);

  /**
   * Return the [element]'s identifier in the [index] or `-1` if the
   * [element] is not referenced in the [index].
   */
  int findElementId(Element element) {
    IndexElementInfo info = new IndexElementInfo(element);
    element = info.element;
    // Find the id of the element's unit.
    int unitId = getUnitId(element);
    if (unitId == -1) {
      return -1;
    }
    // Prepare information about the element.
    int unitMemberId = getElementUnitMemberId(element);
    if (unitMemberId == -1) {
      return -1;
    }
    int classMemberId = getElementClassMemberId(element);
    if (classMemberId == -1) {
      return -1;
    }
    int parameterId = getElementParameterId(element);
    if (parameterId == -1) {
      return -1;
    }
    // Try to find the element id using classMemberId, parameterId, and kind.
    int elementId =
        _findFirstOccurrence(index.elementNameUnitMemberIds, unitMemberId);
    if (elementId == -1) {
      return -1;
    }
    for (;
        elementId < index.elementNameUnitMemberIds.length &&
            index.elementNameUnitMemberIds[elementId] == unitMemberId;
        elementId++) {
      if (index.elementUnits[elementId] == unitId &&
          index.elementNameClassMemberIds[elementId] == classMemberId &&
          index.elementNameParameterIds[elementId] == parameterId &&
          index.elementKinds[elementId] == info.kind) {
        return elementId;
      }
    }
    return -1;
  }

  /**
   * Return the [element]'s class member name identifier, `null` is not a class
   * member, or `-1` if the [element] is not referenced in the [index].
   */
  int getElementClassMemberId(Element element) {
    for (; element != null; element = element.enclosingElement) {
      if (element.enclosingElement is ClassElement) {
        return getStringId(element.name);
      }
    }
    return index.nullStringId;
  }

  /**
   * Return the [element]'s class member name identifier, `null` is not a class
   * member, or `-1` if the [element] is not referenced in the [index].
   */
  int getElementParameterId(Element element) {
    for (; element != null; element = element.enclosingElement) {
      if (element is ParameterElement) {
        return getStringId(element.name);
      }
    }
    return index.nullStringId;
  }

  /**
   * Return the [element]'s top-level name identifier, `0` is the unit, or
   * `-1` if the [element] is not referenced in the [index].
   */
  int getElementUnitMemberId(Element element) {
    for (; element != null; element = element.enclosingElement) {
      if (element.enclosingElement is CompilationUnitElement) {
        return getStringId(element.name);
      }
    }
    return index.nullStringId;
  }

  /**
   * Return a list of results where an element with the given [elementId] has
   * a relation with the kind from [relationToResultKind].
   */
  List<SearchResult> getRelations(
      int elementId,
      Map<IndexRelationKind, SearchResultKind> relationToResultKind,
      CompilationUnitElement enclosingUnitElement) {
    // Find the first usage of the element.
    int i = _findFirstOccurrence(index.usedElements, elementId);
    if (i == -1) {
      return const <SearchResult>[];
    }
    // Create locations for every usage of the element.
    List<SearchResult> results = <SearchResult>[];
    for (;
        i < index.usedElements.length && index.usedElements[i] == elementId;
        i++) {
      IndexRelationKind relationKind = index.usedElementKinds[i];
      SearchResultKind resultKind = relationToResultKind[relationKind];
      if (resultKind != null) {
        int offset = index.usedElementOffsets[i];
        Element enclosingElement =
            _getEnclosingElement(enclosingUnitElement, offset);
        results.add(new SearchResult._(
            null,
            enclosingElement,
            resultKind,
            offset,
            index.usedElementLengths[i],
            true,
            index.usedElementIsQualifiedFlags[i]));
      }
    }
    return results;
  }

  /**
   * Return the identifier of [str] in the [index] or `-1` if [str] is not
   * used in the [index].
   */
  int getStringId(String str) {
    return binarySearch(index.strings, str);
  }

  /**
   * Return the identifier of the [CompilationUnitElement] containing the
   * [element] in the [index] or `-1` if not found.
   */
  int getUnitId(Element element) {
    CompilationUnitElement unitElement = getUnitElement(element);
    int libraryUriId = getUriId(unitElement.library.source.uri);
    if (libraryUriId == -1) {
      return -1;
    }
    int unitUriId = getUriId(unitElement.source.uri);
    if (unitUriId == -1) {
      return -1;
    }
    for (int i = 0; i < index.unitLibraryUris.length; i++) {
      if (index.unitLibraryUris[i] == libraryUriId &&
          index.unitUnitUris[i] == unitUriId) {
        return i;
      }
    }
    return -1;
  }

  /**
   * Return the identifier of the [uri] in the [index] or `-1` if the [uri] is
   * not used in the [index].
   */
  int getUriId(Uri uri) {
    String str = uri.toString();
    return getStringId(str);
  }

  /**
   * Return the index of the first occurrence of the [value] in the [sortedList],
   * or `-1` if the [value] is not in the list.
   */
  int _findFirstOccurrence(List<int> sortedList, int value) {
    // Find an occurrence.
    int i = binarySearch(sortedList, value);
    if (i == -1) {
      return -1;
    }
    // Find the first occurrence.
    while (i > 0 && sortedList[i - 1] == value) {
      i--;
    }
    return i;
  }
}

/**
 * Visitor that adds [SearchResult]s for local elements of a block, method,
 * class or a library - labels, local functions, local variables and parameters,
 * type parameters, import prefixes.
 */
class _LocalReferencesVisitor extends RecursiveAstVisitor {
  final List<SearchResult> results = <SearchResult>[];

  final Element element;
  final CompilationUnitElement enclosingUnitElement;

  _LocalReferencesVisitor(this.element, this.enclosingUnitElement);

  @override
  visitSimpleIdentifier(SimpleIdentifier node) {
    if (node.inDeclarationContext()) {
      return;
    }
    if (node.staticElement == element) {
      AstNode parent = node.parent;
      SearchResultKind kind = SearchResultKind.REFERENCE;
      if (element is FunctionElement) {
        if (parent is MethodInvocation && parent.methodName == node) {
          kind = SearchResultKind.INVOCATION;
        }
      } else if (element is VariableElement) {
        bool isGet = node.inGetterContext();
        bool isSet = node.inSetterContext();
        if (isGet && isSet) {
          kind = SearchResultKind.READ_WRITE;
        } else if (isGet) {
          if (parent is MethodInvocation && parent.methodName == node) {
            kind = SearchResultKind.INVOCATION;
          } else {
            kind = SearchResultKind.READ;
          }
        } else if (isSet) {
          kind = SearchResultKind.WRITE;
        }
      }
      _addResult(node, kind);
    }
  }

  void _addResult(AstNode node, SearchResultKind kind) {
    bool isQualified = node.parent is Label;
    Element enclosingElement =
        _getEnclosingElement(enclosingUnitElement, node.offset);
    results.add(new SearchResult._(element, enclosingElement, kind, node.offset,
        node.length, true, isQualified));
  }
}
