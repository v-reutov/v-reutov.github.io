// @ignoreProblemForFile annotate_overrides
// @ignoreProblemForFile cancel_subscriptions
// @ignoreProblemForFile constant_identifier_names
// @ignoreProblemForFile non_constant_identifier_names
// @ignoreProblemForFile implementation_imports
// @ignoreProblemForFile library_prefixes
// @ignoreProblemForFile type_annotate_public_apis
// @ignoreProblemForFile STRONG_MODE_DOWN_CAST_COMPOSITE
// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
// @ignoreProblemForFile UNUSED_LOCAL_VARIABLE
import 'hello_dialog.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2_components/angular2_components.template.dart' as i1;
export 'hello_dialog.dart';
import 'hello_dialog.css.shim.dart' as import0;
import 'package:angular2/src/debug/debug_context.dart';
import 'package:angular2_components/src/laminate/components/modal/modal.dart' as import2;
import 'package:angular2_components/src/components/content/deferred_content_aware.dart' as import3;
import 'package:angular2_components/src/components/material_dialog/material_dialog.dart' as import4;
import 'package:angular2_components/src/components/focus/focus.dart' as import5;
import 'package:angular2_components/src/components/theme/dark_theme.dart' as import6;
import 'package:angular2_components/src/components/material_button/material_button.dart' as import7;
import 'package:angular2_components/src/components/button_decorator/button_decorator.dart' as import8;
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/debug/debug_app_view.dart';
import 'hello_dialog.dart' as import11;
import 'package:angular2/src/core/linker/query_list.dart' as import12;
import 'dart:html';
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/change_detection/change_detection.dart';
import 'package:angular2/src/core/di/injector.dart' as import16;
import 'package:angular2/src/core/linker/view_type.dart' as import17;
import 'package:angular2_components/src/laminate/components/modal/modal.template.dart' as import18;
import 'package:angular2_components/src/laminate/overlay/src/overlay_service.dart' as import19;
import 'package:angular2_components/src/components/material_dialog/material_dialog.template.dart' as import20;
import 'package:angular2_components/src/utils/browser/dom_service/dom_service.dart' as import21;
import 'package:angular2_components/src/components/material_button/material_button.template.dart' as import22;
import 'package:angular2/src/core/linker/element_ref.dart';
import 'package:angular2_components/src/laminate/popup/src/popup_ref.dart' as import24;
import 'package:angular2_components/src/components/theme/module.dart' as import25;
import 'package:angular2/src/core/linker/app_view_utils.dart' as import26;
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/metadata/view.dart' as import28;
import 'package:angular2_components/src/laminate/popup/src/popup_service.dart' as import29;
import 'package:angular2_components/src/utils/angular/managed_zone/src/managed_zone.dart' as import30;
import 'package:angular2_components/src/utils/angular/imperative_view/imperative_view.dart' as import31;
import 'package:angular2_components/src/laminate/ruler/dom_ruler.dart' as import32;
import 'package:angular2_components/src/laminate/overlay/src/render/overlay_dom_render_service.dart' as import33;
import 'package:angular2_components/src/laminate/overlay/src/render/overlay_style_config.dart' as import34;
import 'package:angular2_components/src/css/acux/zindexer.dart' as import35;
import 'package:angular2_components/src/laminate/popup/src/dom_popup_source.dart' as import36;
import 'package:angular2_components/src/utils/angular/managed_zone/angular_2.dart' as import37;
import 'package:angular2_components/src/laminate/overlay/src/overlay_dom_service.dart' as import38;
import 'package:angular2_components/src/laminate/popup/module.dart' as import39;
import 'package:angular2/src/core/zone/ng_zone.dart' as import40;
import 'package:angular2_components/src/utils/browser/window/module.dart' as import41;
import 'package:angular2_components/src/utils/browser/dom_service/angular_2.dart' as import42;
import 'package:angular2_components/src/utils/disposer/disposer.dart' as import43;
import 'package:angular2/src/core/linker/dynamic_component_loader.dart' as import44;
import 'package:angular2_components/src/laminate/overlay/module.dart' as import45;
import 'package:angular2/src/core/linker/component_factory.dart' as import46;
const List<dynamic> styles_HelloDialog = const [import0.styles];
const List<StaticNodeDebugInfo> nodeDebugInfos_HelloDialog0 = const [
  const StaticNodeDebugInfo(const [
    import2.ModalComponent,import3.DeferredContentAware,import2.Modal
  ]
  ,import2.ModalComponent,const <String, dynamic>{'wrappingModal': import2.ModalComponent}),
  null,const StaticNodeDebugInfo(const [import4.MaterialDialogComponent],import4.MaterialDialogComponent,const <String, dynamic>{}),
  null,null,null,null,null,null,null,null,null,null,null,null,const StaticNodeDebugInfo(const [
    import5.AutoFocusDirective,import6.AcxDarkTheme,import7.MaterialButtonComponent,
    import8.ButtonDirective
  ]
  ,import7.MaterialButtonComponent,const <String, dynamic>{}),null,null,null,null
]
;
RenderComponentType renderType_HelloDialog;
class ViewHelloDialog0 extends DebugAppView<import11.HelloDialog> {
  import12.QueryList _viewQuery_wrappingModal_0;
  Element _el_0;
  ViewContainer _appEl_0;
  import2.ModalComponent _ModalComponent_0_3;
  dynamic __DeferredContentAware_0_4;
  dynamic __Modal_0_5;
  Element _el_2;
  ViewContainer _appEl_2;
  import4.MaterialDialogComponent _MaterialDialogComponent_2_3;
  Element _el_4;
  Text _text_5;
  Element _el_7;
  AnchorElement _el_9;
  Element _el_13;
  Element _el_15;
  ViewContainer _appEl_15;
  import5.AutoFocusDirective _AutoFocusDirective_15_3;
  import6.AcxDarkTheme _AcxDarkTheme_15_4;
  import7.MaterialButtonComponent _MaterialButtonComponent_15_5;
  dynamic __ButtonDirective_15_6;
  var _expr_0 = uninitialized;
  var _expr_1 = uninitialized;
  var _expr_9 = uninitialized;
  var _expr_10 = uninitialized;
  var _expr_11 = uninitialized;
  var _expr_12 = uninitialized;
  var _expr_13 = uninitialized;
  var _expr_14 = uninitialized;
  ViewHelloDialog0(import16.Injector parentInjector,ViewContainer declarationEl): super(ViewHelloDialog0,renderType_HelloDialog,import17.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_HelloDialog0);
  dynamic get _DeferredContentAware_0_4 {
    dbg(0,0,0);
    if ((this.__DeferredContentAware_0_4 == null)) { (__DeferredContentAware_0_4 = this._ModalComponent_0_3); }
    return this.__DeferredContentAware_0_4;
  }
  dynamic get _Modal_0_5 {
    dbg(0,0,0);
    if ((this.__Modal_0_5 == null)) { (__Modal_0_5 = this._ModalComponent_0_3); }
    return this.__Modal_0_5;
  }
  dynamic get _ButtonDirective_15_6 {
    dbg(15,13,6);
    if ((this.__ButtonDirective_15_6 == null)) { (__ButtonDirective_15_6 = this._MaterialButtonComponent_15_5); }
    return this.__ButtonDirective_15_6;
  }
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    _viewQuery_wrappingModal_0 = new import12.QueryList();
    var doc = document;
    _el_0 = doc.createElement('modal');
    _el_0.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_0);
    dbgElm(_el_0,0,0,0);
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = import18.viewFactory_ModalComponent0(this.injector(0),_appEl_0);
    _ModalComponent_0_3 = new import2.ModalComponent(this.parentInjector.get(import19.OverlayService),this.parentInjector.get(import2.Modal,null),this.parentInjector.get(import2.GlobalModalStack,null));
    _appEl_0.initComponent(_ModalComponent_0_3,compView_0);
    Text _text_1 = new Text('\n  ');
    dbgElm(_text_1,1,0,22);
    _el_2 = doc.createElement('material-dialog');
    _el_2.setAttribute(shimCAttr,'');
    dbgElm(_el_2,2,1,2);
    _appEl_2 = new ViewContainer(2,0,this,_el_2);
    var compView_2 = import20.viewFactory_MaterialDialogComponent0(this.injector(2),_appEl_2);
    _MaterialDialogComponent_2_3 = new import4.MaterialDialogComponent(this.parentInjector.get(import21.DomService),compView_2.ref,_ModalComponent_0_3);
    _appEl_2.initComponent(_MaterialDialogComponent_2_3,compView_2);
    Text _text_3 = new Text('\n\n    ');
    dbgElm(_text_3,3,1,19);
    _el_4 = doc.createElement('h3');
    _el_4.setAttribute(shimCAttr,'');
    dbgElm(_el_4,4,3,4);
    createAttr(_el_4,'header','');
    _text_5 = new Text('');
    _el_4.append(_text_5);
    dbgElm(_text_5,5,3,15);
    Text _text_6 = new Text('\n\n    ');
    dbgElm(_text_6,6,5,9);
    _el_7 = doc.createElement('p');
    _el_7.setAttribute(shimCAttr,'');
    dbgElm(_el_7,7,7,4);
    Text _text_8 = new Text('\n      Continue your journey on\n      ');
    _el_7.append(_text_8);
    dbgElm(_text_8,8,7,7);
    _el_9 = doc.createElement('a');
    _el_9.setAttribute(shimCAttr,'');
    _el_7.append(_el_9);
    dbgElm(_el_9,9,9,6);
    createAttr(_el_9,'href','https://webdev.dartlang.org/angular');
    Text _text_10 = new Text('webdev.dartlang.org/angular');
    _el_9.append(_text_10);
    dbgElm(_text_10,10,9,52);
    Text _text_11 = new Text('.\n    ');
    _el_7.append(_text_11);
    dbgElm(_text_11,11,9,83);
    Text _text_12 = new Text('\n\n    ');
    dbgElm(_text_12,12,10,8);
    _el_13 = doc.createElement('div');
    _el_13.setAttribute(shimCAttr,'');
    dbgElm(_el_13,13,12,4);
    createAttr(_el_13,'footer','');
    Text _text_14 = new Text('\n      ');
    _el_13.append(_text_14);
    dbgElm(_text_14,14,12,16);
    _el_15 = doc.createElement('material-button');
    _el_15.setAttribute(shimCAttr,'');
    _el_13.append(_el_15);
    dbgElm(_el_15,15,13,6);
    createAttr(_el_15,'animated','true');
    createAttr(_el_15,'autoFocus','');
    createAttr(_el_15,'clear-size','');
    createAttr(_el_15,'role','button');
    _appEl_15 = new ViewContainer(15,13,this,_el_15);
    var compView_15 = import22.viewFactory_MaterialButtonComponent0(this.injector(15),_appEl_15);
    _AutoFocusDirective_15_3 = new import5.AutoFocusDirective(new ElementRef(_el_15),this.parentInjector.get(import21.DomService),this.parentInjector.get(import5.Focusable,null),_ModalComponent_0_3,this.parentInjector.get(import24.PopupRef,null));
    _AcxDarkTheme_15_4 = new import6.AcxDarkTheme(this.parentInjector.get(import25.darkThemeToken,null));
    _MaterialButtonComponent_15_5 = new import7.MaterialButtonComponent(new ElementRef(_el_15),_AcxDarkTheme_15_4,compView_15.ref);
    _appEl_15.initComponent(_MaterialButtonComponent_15_5,compView_15);
    Text _text_16 = new Text('\n        Close\n      ');
    dbgElm(_text_16,16,15,57);
    compView_15.createComp([[_text_16]],null);
    Text _text_17 = new Text('\n    ');
    _el_13.append(_text_17);
    dbgElm(_text_17,17,17,24);
    Text _text_18 = new Text('\n  ');
    dbgElm(_text_18,18,18,10);
    compView_2.createComp([
      [_el_4],[
        _text_3,_text_6,_el_7,_text_12,_text_18
      ]
      ,[_el_13]
    ]
    ,null);
    Text _text_19 = new Text('\n');
    dbgElm(_text_19,19,19,20);
      compView_0.createComp([[
        _text_1,_el_2,_text_19
      ]
    ],null);
    listen(_el_15,'trigger',evt(_handle_trigger_15_0));
    listen(_el_15,'click',evt(_handle_click_15_1));
    listen(_el_15,'blur',evt(_handle_blur_15_2));
    listen(_el_15,'mouseup',evt(_handle_mouseup_15_3));
    listen(_el_15,'keypress',evt(_handle_keypress_15_4));
    listen(_el_15,'focus',evt(_handle_focus_15_5));
    listen(_el_15,'mousedown',evt(_handle_mousedown_15_6));
    final subscription_0 = _MaterialButtonComponent_15_5.trigger.listen(evt(_handle_trigger_15_0));
    _viewQuery_wrappingModal_0.reset([_ModalComponent_0_3]);
    ctx.wrappingModal = _viewQuery_wrappingModal_0.first;
    init([],[
      _el_0,_text_1,_el_2,_text_3,_el_4,_text_5,_text_6,_el_7,_text_8,_el_9,_text_10,
      _text_11,_text_12,_el_13,_text_14,_el_15,_text_16,_text_17,_text_18,_text_19
    ]
    ,[subscription_0]);
    return null;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import5.AutoFocusDirective) && ((15 <= requestNodeIndex) && (requestNodeIndex <= 16)))) { return _AutoFocusDirective_15_3; }
    if ((identical(token, import6.AcxDarkTheme) && ((15 <= requestNodeIndex) && (requestNodeIndex <= 16)))) { return _AcxDarkTheme_15_4; }
    if ((identical(token, import7.MaterialButtonComponent) && ((15 <= requestNodeIndex) && (requestNodeIndex <= 16)))) { return _MaterialButtonComponent_15_5; }
    if ((identical(token, import8.ButtonDirective) && ((15 <= requestNodeIndex) && (requestNodeIndex <= 16)))) { return _ButtonDirective_15_6; }
    if ((identical(token, import4.MaterialDialogComponent) && ((2 <= requestNodeIndex) && (requestNodeIndex <= 18)))) { return _MaterialDialogComponent_2_3; }
    if ((identical(token, import2.ModalComponent) && ((0 <= requestNodeIndex) && (requestNodeIndex <= 19)))) { return _ModalComponent_0_3; }
    if ((identical(token, import3.DeferredContentAware) && ((0 <= requestNodeIndex) && (requestNodeIndex <= 19)))) { return _DeferredContentAware_0_4; }
    if ((identical(token, import2.Modal) && ((0 <= requestNodeIndex) && (requestNodeIndex <= 19)))) { return _Modal_0_5; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    dbg(15,13,23);
    final currVal_9 = '';
    if (import26.checkBinding(_expr_9,currVal_9)) {
      _AutoFocusDirective_15_3.autoFocus = currVal_9;
      _expr_9 = currVal_9;
    }
    if ((identical(this.cdState, ChangeDetectorState.NeverChecked) && !import26.AppViewUtils.throwOnChanges)) { _AutoFocusDirective_15_3.ngOnInit(); }
    this.detectContentChildrenChanges();
    if (!import26.AppViewUtils.throwOnChanges) {
      dbg(2,1,2);
      _MaterialDialogComponent_2_3.ngAfterContentChecked();
    }
    dbg(0,0,0);
    final currVal_0 = _ModalComponent_0_3.uniquePaneId;
    if (import26.checkBinding(_expr_0,currVal_0)) {
      setAttr(_el_0,'pane-id',((currVal_0 == null)? null: currVal_0.toString()));
      _expr_0 = currVal_0;
    }
    dbg(5,3,15);
    final currVal_1 = import26.interpolate1('\n        Hello, ',((ctx.name == '')? 'mysterious stranger': ctx.name),'!\n    ');
    if (import26.checkBinding(_expr_1,currVal_1)) {
      _text_5.text = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(15,13,6);
    final currVal_10 = _MaterialButtonComponent_15_5.raised;
    if (import26.checkBinding(_expr_10,currVal_10)) {
      updateElemClass(_el_15,'is-raised',currVal_10);
      _expr_10 = currVal_10;
    }
    dbg(15,13,6);
    final currVal_11 = _MaterialButtonComponent_15_5.disabledStr;
    if (import26.checkBinding(_expr_11,currVal_11)) {
      setAttr(_el_15,'aria-disabled',((currVal_11 == null)? null: currVal_11.toString()));
      _expr_11 = currVal_11;
    }
    dbg(15,13,6);
    final currVal_12 = _MaterialButtonComponent_15_5.tabIndex;
    if (import26.checkBinding(_expr_12,currVal_12)) {
      setAttr(_el_15,'tabindex',((currVal_12 == null)? null: currVal_12.toString()));
      _expr_12 = currVal_12;
    }
    dbg(15,13,6);
    final currVal_13 = _MaterialButtonComponent_15_5.disabled;
    if (import26.checkBinding(_expr_13,currVal_13)) {
      updateElemClass(_el_15,'is-disabled',currVal_13);
      _expr_13 = currVal_13;
    }
    dbg(15,13,6);
    final currVal_14 = _MaterialButtonComponent_15_5.zElevation;
    if (import26.checkBinding(_expr_14,currVal_14)) {
      setAttr(_el_15,'elevation',((currVal_14 == null)? null: currVal_14.toString()));
      _expr_14 = currVal_14;
    }
    this.detectViewChildrenChanges();
  }
  void destroyInternal() {
    dbg(15,13,6);
    _AutoFocusDirective_15_3.ngOnDestroy();
    dbg(2,1,2);
    _MaterialDialogComponent_2_3.ngOnDestroy();
    dbg(0,0,0);
    _ModalComponent_0_3.ngOnDestroy();
  }
  bool _handle_trigger_15_0($event) {
    this.markPathToRootAsCheckOnce();
    dbg(15,15,23);
    final dynamic pd_0 = !identical((_ModalComponent_0_3.close() as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_click_15_1($event) {
    _appEl_15.componentView.markPathToRootAsCheckOnce();
    dbg(15,13,6);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_15_5.handleClick($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_blur_15_2($event) {
    _appEl_15.componentView.markPathToRootAsCheckOnce();
    dbg(15,13,6);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_15_5.onBlur($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_mouseup_15_3($event) {
    _appEl_15.componentView.markPathToRootAsCheckOnce();
    dbg(15,13,6);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_15_5.onMouseUp($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_keypress_15_4($event) {
    _appEl_15.componentView.markPathToRootAsCheckOnce();
    dbg(15,13,6);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_15_5.handleKeyPress($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_focus_15_5($event) {
    _appEl_15.componentView.markPathToRootAsCheckOnce();
    dbg(15,13,6);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_15_5.onFocus($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_mousedown_15_6($event) {
    _appEl_15.componentView.markPathToRootAsCheckOnce();
    dbg(15,13,6);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_15_5.onMouseDown($event) as dynamic), false);
    return (true && pd_0);
  }
}
AppView viewFactory_HelloDialog0(import16.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_HelloDialog, null)) { (renderType_HelloDialog = import26.appViewUtils.createRenderComponentType('asset:get_started/lib/hello_dialog/hello_dialog.html',0,import28.ViewEncapsulation.Emulated,styles_HelloDialog)); }
  return new ViewHelloDialog0(parentInjector,declarationEl);
}
const List<dynamic> styles_HelloDialogHost = const [];
  const List<StaticNodeDebugInfo> nodeDebugInfos_HelloDialogHost0 = const [const StaticNodeDebugInfo(const [
    import11.HelloDialog,import29.defaultPopupPositions,import30.ManagedZone,Window,
    import21.DomService,import31.AcxImperativeViewUtils,Document,import32.DomRuler,import33.overlayContainerName,
    import33.overlayContainerParent,import33.overlayContainerToken,import33.overlaySyncDom,
    import34.OverlayStyleConfig,import35.ZIndexer,import33.OverlayDomRenderService,import19.OverlayService,
    import36.DomPopupSourceFactory,import29.PopupService
  ]
,import11.HelloDialog,const <String, dynamic>{})];
RenderComponentType renderType_HelloDialogHost;
class ViewHelloDialogHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import11.HelloDialog _HelloDialog_0_3;
  dynamic __defaultPopupPositions_0_4;
  import37.Angular2ManagedZone __ManagedZone_0_5;
  dynamic __Window_0_6;
  dynamic __DomService_0_7;
  import31.AcxImperativeViewUtils __AcxImperativeViewUtils_0_8;
  dynamic __Document_0_9;
  import32.DomRuler __DomRuler_0_10;
  dynamic __overlayContainerName_0_11;
  dynamic __overlayContainerParent_0_12;
  dynamic __overlayContainerToken_0_13;
  dynamic __overlaySyncDom_0_14;
  import34.OverlayStyleConfig __OverlayStyleConfig_0_15;
  import35.ZIndexer __ZIndexer_0_16;
  import33.OverlayDomRenderService __OverlayDomRenderService_0_17;
  import38.OverlayDomService __OverlayService_0_18;
  import36.DomPopupSourceFactory __DomPopupSourceFactory_0_19;
  import29.PopupService __PopupService_0_20;
  ViewHelloDialogHost0(import16.Injector parentInjector,ViewContainer declarationEl): super(ViewHelloDialogHost0,renderType_HelloDialogHost,import17.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_HelloDialogHost0);
  dynamic get _defaultPopupPositions_0_4 {
    dbg(0,0,0);
    if ((this.__defaultPopupPositions_0_4 == null)) { (__defaultPopupPositions_0_4 = import39.inlinePositions); }
    return this.__defaultPopupPositions_0_4;
  }
  import37.Angular2ManagedZone get _ManagedZone_0_5 {
    dbg(0,0,0);
    if ((this.__ManagedZone_0_5 == null)) { (__ManagedZone_0_5 = new import37.Angular2ManagedZone(this.parentInjector.get(import40.NgZone))); }
    return this.__ManagedZone_0_5;
  }
  dynamic get _Window_0_6 {
    dbg(0,0,0);
    if ((this.__Window_0_6 == null)) { (__Window_0_6 = import41.getWindow()); }
    return this.__Window_0_6;
  }
  dynamic get _DomService_0_7 {
    dbg(0,0,0);
    if ((this.__DomService_0_7 == null)) { (__DomService_0_7 = import42.createDomService(this.parentInjector.get(import21.DomService,null),this.parentInjector.get(import43.Disposer,null),this._ManagedZone_0_5,this._Window_0_6)); }
    return this.__DomService_0_7;
  }
  import31.AcxImperativeViewUtils get _AcxImperativeViewUtils_0_8 {
    dbg(0,0,0);
    if ((this.__AcxImperativeViewUtils_0_8 == null)) { (__AcxImperativeViewUtils_0_8 = new import31.AcxImperativeViewUtils(this.parentInjector.get(import44.DynamicComponentLoader),this._DomService_0_7)); }
    return this.__AcxImperativeViewUtils_0_8;
  }
  dynamic get _Document_0_9 {
    dbg(0,0,0);
    if ((this.__Document_0_9 == null)) { (__Document_0_9 = import41.getDocument()); }
    return this.__Document_0_9;
  }
  import32.DomRuler get _DomRuler_0_10 {
    dbg(0,0,0);
    if ((this.__DomRuler_0_10 == null)) { (__DomRuler_0_10 = new import32.DomRuler(this._Document_0_9,this._DomService_0_7)); }
    return this.__DomRuler_0_10;
  }
  dynamic get _overlayContainerName_0_11 {
    dbg(0,0,0);
    if ((this.__overlayContainerName_0_11 == null)) { (__overlayContainerName_0_11 = 'default'); }
    return this.__overlayContainerName_0_11;
  }
  dynamic get _overlayContainerParent_0_12 {
    dbg(0,0,0);
    if ((this.__overlayContainerParent_0_12 == null)) { (__overlayContainerParent_0_12 = import45.getOverlayContainerParent(this._Document_0_9)); }
    return this.__overlayContainerParent_0_12;
  }
  dynamic get _overlayContainerToken_0_13 {
    dbg(0,0,0);
    if ((this.__overlayContainerToken_0_13 == null)) { (__overlayContainerToken_0_13 = import45.getDefaultContainer(this._overlayContainerName_0_11,this._overlayContainerParent_0_12)); }
    return this.__overlayContainerToken_0_13;
  }
  dynamic get _overlaySyncDom_0_14 {
    dbg(0,0,0);
    if ((this.__overlaySyncDom_0_14 == null)) { (__overlaySyncDom_0_14 = true); }
    return this.__overlaySyncDom_0_14;
  }
  import34.OverlayStyleConfig get _OverlayStyleConfig_0_15 {
    dbg(0,0,0);
    if ((this.__OverlayStyleConfig_0_15 == null)) { (__OverlayStyleConfig_0_15 = new import34.OverlayStyleConfig(this._Document_0_9)); }
    return this.__OverlayStyleConfig_0_15;
  }
  import35.ZIndexer get _ZIndexer_0_16 {
    dbg(0,0,0);
    if ((this.__ZIndexer_0_16 == null)) { (__ZIndexer_0_16 = new import35.ZIndexer()); }
    return this.__ZIndexer_0_16;
  }
  import33.OverlayDomRenderService get _OverlayDomRenderService_0_17 {
    dbg(0,0,0);
    if ((this.__OverlayDomRenderService_0_17 == null)) { (__OverlayDomRenderService_0_17 = new import33.OverlayDomRenderService(this._OverlayStyleConfig_0_15,this._overlayContainerToken_0_13,this._overlayContainerName_0_11,this._DomRuler_0_10,this._DomService_0_7,this._AcxImperativeViewUtils_0_8,this._overlaySyncDom_0_14,this._ZIndexer_0_16)); }
    return this.__OverlayDomRenderService_0_17;
  }
  import38.OverlayDomService get _OverlayService_0_18 {
    dbg(0,0,0);
    if ((this.__OverlayService_0_18 == null)) { (__OverlayService_0_18 = new import38.OverlayDomService(this.parentInjector.get(import40.NgZone),this._overlaySyncDom_0_14,this._OverlayDomRenderService_0_17,this.parentInjector.get(import19.OverlayService,null))); }
    return this.__OverlayService_0_18;
  }
  import36.DomPopupSourceFactory get _DomPopupSourceFactory_0_19 {
    dbg(0,0,0);
    if ((this.__DomPopupSourceFactory_0_19 == null)) { (__DomPopupSourceFactory_0_19 = new import36.DomPopupSourceFactory(this._Window_0_6,this._DomRuler_0_10)); }
    return this.__DomPopupSourceFactory_0_19;
  }
  import29.PopupService get _PopupService_0_20 {
    dbg(0,0,0);
    if ((this.__PopupService_0_20 == null)) { (__PopupService_0_20 = new import29.PopupService(this._defaultPopupPositions_0_4,this._OverlayService_0_18,this._ZIndexer_0_16)); }
    return this.__PopupService_0_20;
  }
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('hello-dialog',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_HelloDialog0(this.injector(0),_appEl_0);
    _HelloDialog_0_3 = new import11.HelloDialog();
    _appEl_0.initComponent(_HelloDialog_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import11.HelloDialog) && (0 == requestNodeIndex))) { return _HelloDialog_0_3; }
    if ((identical(token, import29.defaultPopupPositions) && (0 == requestNodeIndex))) { return _defaultPopupPositions_0_4; }
    if ((identical(token, import30.ManagedZone) && (0 == requestNodeIndex))) { return _ManagedZone_0_5; }
    if ((identical(token, Window) && (0 == requestNodeIndex))) { return _Window_0_6; }
    if ((identical(token, import21.DomService) && (0 == requestNodeIndex))) { return _DomService_0_7; }
    if ((identical(token, import31.AcxImperativeViewUtils) && (0 == requestNodeIndex))) { return _AcxImperativeViewUtils_0_8; }
    if ((identical(token, Document) && (0 == requestNodeIndex))) { return _Document_0_9; }
    if ((identical(token, import32.DomRuler) && (0 == requestNodeIndex))) { return _DomRuler_0_10; }
    if ((identical(token, import33.overlayContainerName) && (0 == requestNodeIndex))) { return _overlayContainerName_0_11; }
    if ((identical(token, import33.overlayContainerParent) && (0 == requestNodeIndex))) { return _overlayContainerParent_0_12; }
    if ((identical(token, import33.overlayContainerToken) && (0 == requestNodeIndex))) { return _overlayContainerToken_0_13; }
    if ((identical(token, import33.overlaySyncDom) && (0 == requestNodeIndex))) { return _overlaySyncDom_0_14; }
    if ((identical(token, import34.OverlayStyleConfig) && (0 == requestNodeIndex))) { return _OverlayStyleConfig_0_15; }
    if ((identical(token, import35.ZIndexer) && (0 == requestNodeIndex))) { return _ZIndexer_0_16; }
    if ((identical(token, import33.OverlayDomRenderService) && (0 == requestNodeIndex))) { return _OverlayDomRenderService_0_17; }
    if ((identical(token, import19.OverlayService) && (0 == requestNodeIndex))) { return _OverlayService_0_18; }
    if ((identical(token, import36.DomPopupSourceFactory) && (0 == requestNodeIndex))) { return _DomPopupSourceFactory_0_19; }
    if ((identical(token, import29.PopupService) && (0 == requestNodeIndex))) { return _PopupService_0_20; }
    return notFoundResult;
  }
}
AppView viewFactory_HelloDialogHost0(import16.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_HelloDialogHost, null)) { (renderType_HelloDialogHost = import26.appViewUtils.createRenderComponentType('',0,import28.ViewEncapsulation.Emulated,styles_HelloDialogHost)); }
  return new ViewHelloDialogHost0(parentInjector,declarationEl);
}
const import46.ComponentFactory HelloDialogNgFactory = const import46.ComponentFactory('hello-dialog',viewFactory_HelloDialogHost0,import11.HelloDialog,_METADATA);
const _METADATA = const <dynamic>[HelloDialog, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(HelloDialog, new _ngRef.ReflectionInfo(
const <dynamic>[HelloDialogNgFactory],
const [],
() => new HelloDialog())
)
;
i0.initReflector();
i1.initReflector();
}
