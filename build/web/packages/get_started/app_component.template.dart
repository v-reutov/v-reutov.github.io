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
import 'app_component.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:get_started/hello_dialog/hello_dialog.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:angular2_components/angular2_components.template.dart' as i1;
import 'package:get_started/hello_dialog/hello_dialog.template.dart' as i2;
export 'app_component.dart';
import 'app_component.css.shim.dart' as import0;
import 'package:angular2/src/debug/debug_context.dart';
import 'package:angular2_components/src/components/material_input/deferred_validator.dart' as import2;
import 'package:angular2_components/src/components/material_input/material_input.dart' as import3;
import 'package:angular2_components/src/components/focus/focus.dart' as import4;
import 'package:angular2_components/src/components/material_input/base_material_input.dart' as import5;
import 'package:angular2_components/src/components/material_input/material_input_default_value_accessor.dart' as import6;
import 'package:angular2/src/common/forms/validators.dart' as import7;
import 'package:angular2_components/src/utils/angular/reference/reference.dart' as import8;
import 'package:angular2_components/src/components/theme/dark_theme.dart' as import9;
import 'package:angular2_components/src/components/material_button/material_button.dart' as import10;
import 'package:angular2_components/src/components/button_decorator/button_decorator.dart' as import11;
import 'hello_dialog/hello_dialog.dart' as import12;
import 'package:angular2_components/src/laminate/popup/src/popup_service.dart' as import13;
import 'package:angular2_components/src/utils/angular/managed_zone/src/managed_zone.dart' as import14;
import 'dart:html';
import 'package:angular2_components/src/utils/browser/dom_service/dom_service.dart' as import16;
import 'package:angular2_components/src/utils/angular/imperative_view/imperative_view.dart' as import17;
import 'package:angular2_components/src/laminate/ruler/dom_ruler.dart' as import18;
import 'package:angular2_components/src/laminate/overlay/src/render/overlay_dom_render_service.dart' as import19;
import 'package:angular2_components/src/laminate/overlay/src/render/overlay_style_config.dart' as import20;
import 'package:angular2_components/src/css/acux/zindexer.dart' as import21;
import 'package:angular2_components/src/laminate/overlay/src/overlay_service.dart' as import22;
import 'package:angular2_components/src/laminate/popup/src/dom_popup_source.dart' as import23;
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/debug/debug_app_view.dart';
import 'app_component.dart' as import26;
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2_components/src/utils/angular/managed_zone/angular_2.dart' as import28;
import 'package:angular2_components/src/laminate/overlay/src/overlay_dom_service.dart' as import29;
import 'package:angular2/src/core/change_detection/change_detection.dart';
import 'package:angular2/src/core/di/injector.dart' as import31;
import 'package:angular2/src/core/linker/view_type.dart' as import32;
import 'package:angular2_components/src/laminate/popup/module.dart' as import33;
import 'package:angular2/src/core/zone/ng_zone.dart' as import34;
import 'package:angular2_components/src/utils/browser/window/module.dart' as import35;
import 'package:angular2_components/src/utils/browser/dom_service/angular_2.dart' as import36;
import 'package:angular2_components/src/utils/disposer/disposer.dart' as import37;
import 'package:angular2/src/core/linker/dynamic_component_loader.dart' as import38;
import 'package:angular2_components/src/laminate/overlay/module.dart' as import39;
import 'package:angular2_components/src/components/material_input/material_input.template.dart' as import40;
import 'package:angular2/src/core/linker/element_ref.dart';
import 'package:angular2_components/src/laminate/components/modal/modal.dart' as import42;
import 'package:angular2_components/src/laminate/popup/src/popup_ref.dart' as import43;
import 'package:angular2_components/src/components/material_button/material_button.template.dart' as import44;
import 'package:angular2_components/src/components/theme/module.dart' as import45;
import 'hello_dialog/hello_dialog.template.dart' as import46;
import 'package:angular2/src/core/linker/app_view_utils.dart' as import47;
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/metadata/view.dart' as import49;
import 'package:angular2/src/core/linker/component_factory.dart' as import50;
const List<dynamic> styles_AppComponent = const [import0.styles];
const List<StaticNodeDebugInfo> nodeDebugInfos_AppComponent0 = const [
  null,null,null,const StaticNodeDebugInfo(const [
    import2.DeferredValidator,import3.MaterialInputComponent,import4.Focusable,import4.AutoFocusDirective,
    import5.BaseMaterialInput,import6.MaterialInputDefaultValueAccessor,import7.NG_VALIDATORS,
    import8.ReferenceDirective
  ]
  ,import3.MaterialInputComponent,const <String, dynamic>{'myInput': import3.MaterialInputComponent}),
  null,null,const StaticNodeDebugInfo(const [
    import9.AcxDarkTheme,import10.MaterialButtonComponent,import11.ButtonDirective
  ]
  ,import10.MaterialButtonComponent,const <String, dynamic>{}),null,null,const StaticNodeDebugInfo(const [
    import12.HelloDialog,import13.defaultPopupPositions,import14.ManagedZone,Window,
    import16.DomService,import17.AcxImperativeViewUtils,Document,import18.DomRuler,import19.overlayContainerName,
    import19.overlayContainerParent,import19.overlayContainerToken,import19.overlaySyncDom,
    import20.OverlayStyleConfig,import21.ZIndexer,import19.OverlayDomRenderService,import22.OverlayService,
    import23.DomPopupSourceFactory,import13.PopupService
  ]
  ,import12.HelloDialog,const <String, dynamic>{'myDialog': import12.HelloDialog}),
  null
]
;
RenderComponentType renderType_AppComponent;
class ViewAppComponent0 extends DebugAppView<import26.AppComponent> {
  Element _el_0;
  Element _el_3;
  ViewContainer _appEl_3;
  import2.DeferredValidator _DeferredValidator_3_3;
  import3.MaterialInputComponent _MaterialInputComponent_3_4;
  dynamic _Focusable_3_5;
  import4.AutoFocusDirective _AutoFocusDirective_3_6;
  dynamic _BaseMaterialInput_3_7;
  import6.MaterialInputDefaultValueAccessor _MaterialInputDefaultValueAccessor_3_8;
  List<dynamic> __NG_VALIDATORS_3_9;
  dynamic __ReferenceDirective_3_10;
  Element _el_6;
  ViewContainer _appEl_6;
  import9.AcxDarkTheme _AcxDarkTheme_6_3;
  import10.MaterialButtonComponent _MaterialButtonComponent_6_4;
  dynamic __ButtonDirective_6_5;
  Element _el_9;
  ViewContainer _appEl_9;
  import12.HelloDialog _HelloDialog_9_3;
  dynamic __defaultPopupPositions_9_4;
  import28.Angular2ManagedZone __ManagedZone_9_5;
  dynamic __Window_9_6;
  dynamic __DomService_9_7;
  import17.AcxImperativeViewUtils __AcxImperativeViewUtils_9_8;
  dynamic __Document_9_9;
  import18.DomRuler __DomRuler_9_10;
  dynamic __overlayContainerName_9_11;
  dynamic __overlayContainerParent_9_12;
  dynamic __overlayContainerToken_9_13;
  dynamic __overlaySyncDom_9_14;
  import20.OverlayStyleConfig __OverlayStyleConfig_9_15;
  import21.ZIndexer __ZIndexer_9_16;
  import19.OverlayDomRenderService __OverlayDomRenderService_9_17;
  import29.OverlayDomService __OverlayService_9_18;
  import23.DomPopupSourceFactory __DomPopupSourceFactory_9_19;
  import13.PopupService __PopupService_9_20;
  var _expr_1 = uninitialized;
  var _expr_2 = uninitialized;
  var _expr_3 = uninitialized;
  var _expr_11 = uninitialized;
  var _expr_12 = uninitialized;
  var _expr_13 = uninitialized;
  var _expr_14 = uninitialized;
  var _expr_15 = uninitialized;
  var _expr_16 = uninitialized;
  var _expr_17 = uninitialized;
  ViewAppComponent0(import31.Injector parentInjector,ViewContainer declarationEl): super(ViewAppComponent0,renderType_AppComponent,import32.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_AppComponent0);
  List<dynamic> get _NG_VALIDATORS_3_9 {
    dbg(3,2,0);
    if ((this.__NG_VALIDATORS_3_9 == null)) { (__NG_VALIDATORS_3_9 = [this._DeferredValidator_3_3]); }
    return this.__NG_VALIDATORS_3_9;
  }
  dynamic get _ReferenceDirective_3_10 {
    dbg(3,2,0);
    if ((this.__ReferenceDirective_3_10 == null)) { (__ReferenceDirective_3_10 = this._MaterialInputComponent_3_4); }
    return this.__ReferenceDirective_3_10;
  }
  dynamic get _ButtonDirective_6_5 {
    dbg(6,8,0);
    if ((this.__ButtonDirective_6_5 == null)) { (__ButtonDirective_6_5 = this._MaterialButtonComponent_6_4); }
    return this.__ButtonDirective_6_5;
  }
  dynamic get _defaultPopupPositions_9_4 {
    dbg(9,14,0);
    if ((this.__defaultPopupPositions_9_4 == null)) { (__defaultPopupPositions_9_4 = import33.inlinePositions); }
    return this.__defaultPopupPositions_9_4;
  }
  import28.Angular2ManagedZone get _ManagedZone_9_5 {
    dbg(9,14,0);
    if ((this.__ManagedZone_9_5 == null)) { (__ManagedZone_9_5 = new import28.Angular2ManagedZone(this.parentInjector.get(import34.NgZone))); }
    return this.__ManagedZone_9_5;
  }
  dynamic get _Window_9_6 {
    dbg(9,14,0);
    if ((this.__Window_9_6 == null)) { (__Window_9_6 = import35.getWindow()); }
    return this.__Window_9_6;
  }
  dynamic get _DomService_9_7 {
    dbg(9,14,0);
    if ((this.__DomService_9_7 == null)) { (__DomService_9_7 = import36.createDomService(this.parentInjector.get(import16.DomService,null),this.parentInjector.get(import37.Disposer,null),this._ManagedZone_9_5,this._Window_9_6)); }
    return this.__DomService_9_7;
  }
  import17.AcxImperativeViewUtils get _AcxImperativeViewUtils_9_8 {
    dbg(9,14,0);
    if ((this.__AcxImperativeViewUtils_9_8 == null)) { (__AcxImperativeViewUtils_9_8 = new import17.AcxImperativeViewUtils(this.parentInjector.get(import38.DynamicComponentLoader),this._DomService_9_7)); }
    return this.__AcxImperativeViewUtils_9_8;
  }
  dynamic get _Document_9_9 {
    dbg(9,14,0);
    if ((this.__Document_9_9 == null)) { (__Document_9_9 = import35.getDocument()); }
    return this.__Document_9_9;
  }
  import18.DomRuler get _DomRuler_9_10 {
    dbg(9,14,0);
    if ((this.__DomRuler_9_10 == null)) { (__DomRuler_9_10 = new import18.DomRuler(this._Document_9_9,this._DomService_9_7)); }
    return this.__DomRuler_9_10;
  }
  dynamic get _overlayContainerName_9_11 {
    dbg(9,14,0);
    if ((this.__overlayContainerName_9_11 == null)) { (__overlayContainerName_9_11 = 'default'); }
    return this.__overlayContainerName_9_11;
  }
  dynamic get _overlayContainerParent_9_12 {
    dbg(9,14,0);
    if ((this.__overlayContainerParent_9_12 == null)) { (__overlayContainerParent_9_12 = import39.getOverlayContainerParent(this._Document_9_9)); }
    return this.__overlayContainerParent_9_12;
  }
  dynamic get _overlayContainerToken_9_13 {
    dbg(9,14,0);
    if ((this.__overlayContainerToken_9_13 == null)) { (__overlayContainerToken_9_13 = import39.getDefaultContainer(this._overlayContainerName_9_11,this._overlayContainerParent_9_12)); }
    return this.__overlayContainerToken_9_13;
  }
  dynamic get _overlaySyncDom_9_14 {
    dbg(9,14,0);
    if ((this.__overlaySyncDom_9_14 == null)) { (__overlaySyncDom_9_14 = true); }
    return this.__overlaySyncDom_9_14;
  }
  import20.OverlayStyleConfig get _OverlayStyleConfig_9_15 {
    dbg(9,14,0);
    if ((this.__OverlayStyleConfig_9_15 == null)) { (__OverlayStyleConfig_9_15 = new import20.OverlayStyleConfig(this._Document_9_9)); }
    return this.__OverlayStyleConfig_9_15;
  }
  import21.ZIndexer get _ZIndexer_9_16 {
    dbg(9,14,0);
    if ((this.__ZIndexer_9_16 == null)) { (__ZIndexer_9_16 = new import21.ZIndexer()); }
    return this.__ZIndexer_9_16;
  }
  import19.OverlayDomRenderService get _OverlayDomRenderService_9_17 {
    dbg(9,14,0);
    if ((this.__OverlayDomRenderService_9_17 == null)) { (__OverlayDomRenderService_9_17 = new import19.OverlayDomRenderService(this._OverlayStyleConfig_9_15,this._overlayContainerToken_9_13,this._overlayContainerName_9_11,this._DomRuler_9_10,this._DomService_9_7,this._AcxImperativeViewUtils_9_8,this._overlaySyncDom_9_14,this._ZIndexer_9_16)); }
    return this.__OverlayDomRenderService_9_17;
  }
  import29.OverlayDomService get _OverlayService_9_18 {
    dbg(9,14,0);
    if ((this.__OverlayService_9_18 == null)) { (__OverlayService_9_18 = new import29.OverlayDomService(this.parentInjector.get(import34.NgZone),this._overlaySyncDom_9_14,this._OverlayDomRenderService_9_17,this.parentInjector.get(import22.OverlayService,null))); }
    return this.__OverlayService_9_18;
  }
  import23.DomPopupSourceFactory get _DomPopupSourceFactory_9_19 {
    dbg(9,14,0);
    if ((this.__DomPopupSourceFactory_9_19 == null)) { (__DomPopupSourceFactory_9_19 = new import23.DomPopupSourceFactory(this._Window_9_6,this._DomRuler_9_10)); }
    return this.__DomPopupSourceFactory_9_19;
  }
  import13.PopupService get _PopupService_9_20 {
    dbg(9,14,0);
    if ((this.__PopupService_9_20 == null)) { (__PopupService_9_20 = new import13.PopupService(this._defaultPopupPositions_9_4,this._OverlayService_9_18,this._ZIndexer_9_16)); }
    return this.__PopupService_9_20;
  }
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    var doc = document;
    _el_0 = doc.createElement('h1');
    _el_0.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_0);
    dbgElm(_el_0,0,0,0);
    Text _text_1 = new Text('My First AngularDart App');
    _el_0.append(_text_1);
    dbgElm(_text_1,1,0,4);
    Text _text_2 = new Text('\n\n');
    parentRenderNode.append(_text_2);
    dbgElm(_text_2,2,0,33);
    _el_3 = doc.createElement('material-input');
    _el_3.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_3);
    dbgElm(_el_3,3,2,0);
    createAttr(_el_3,'autoFocus','');
    _el_3.className = 'themeable';
    createAttr(_el_3,'floatingLabel','');
    createAttr(_el_3,'label','Your name');
    createAttr(_el_3,'tabIndex','-1');
    _appEl_3 = new ViewContainer(3,null,this,_el_3);
    var compView_3 = import40.viewFactory_MaterialInputComponent0(this.injector(3),_appEl_3);
    _DeferredValidator_3_3 = new import2.DeferredValidator();
    _MaterialInputComponent_3_4 = new import3.MaterialInputComponent(null,null,compView_3.ref,_DeferredValidator_3_3);
    _Focusable_3_5 = _MaterialInputComponent_3_4;
    _AutoFocusDirective_3_6 = new import4.AutoFocusDirective(new ElementRef(_el_3),this.parentInjector.get(import16.DomService),_Focusable_3_5,this.parentInjector.get(import42.ModalComponent,null),this.parentInjector.get(import43.PopupRef,null));
    _BaseMaterialInput_3_7 = _MaterialInputComponent_3_4;
    _MaterialInputDefaultValueAccessor_3_8 = new import6.MaterialInputDefaultValueAccessor(_BaseMaterialInput_3_7,null);
    _appEl_3.initComponent(_MaterialInputComponent_3_4,compView_3);
    Text _text_4 = new Text('\n');
    dbgElm(_text_4,4,5,26);
    compView_3.createComp([[]],null);
    Text _text_5 = new Text('\n\n');
    parentRenderNode.append(_text_5);
    dbgElm(_text_5,5,6,17);
    _el_6 = doc.createElement('material-button');
    _el_6.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_6);
    dbgElm(_el_6,6,8,0);
    createAttr(_el_6,'animated','true');
    _el_6.className = 'blue';
    createAttr(_el_6,'raised','');
    createAttr(_el_6,'role','button');
    _appEl_6 = new ViewContainer(6,null,this,_el_6);
    var compView_6 = import44.viewFactory_MaterialButtonComponent0(this.injector(6),_appEl_6);
    _AcxDarkTheme_6_3 = new import9.AcxDarkTheme(this.parentInjector.get(import45.darkThemeToken,null));
    _MaterialButtonComponent_6_4 = new import10.MaterialButtonComponent(new ElementRef(_el_6),_AcxDarkTheme_6_3,compView_6.ref);
    _appEl_6.initComponent(_MaterialButtonComponent_6_4,compView_6);
    Text _text_7 = new Text('\n    Say Hello\n');
    dbgElm(_text_7,7,10,30);
    compView_6.createComp([[_text_7]],null);
    Text _text_8 = new Text('\n\n');
    parentRenderNode.append(_text_8);
    dbgElm(_text_8,8,12,18);
    _el_9 = doc.createElement('hello-dialog');
    _el_9.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_9);
    dbgElm(_el_9,9,14,0);
    _appEl_9 = new ViewContainer(9,null,this,_el_9);
    var compView_9 = import46.viewFactory_HelloDialog0(this.injector(9),_appEl_9);
    _HelloDialog_9_3 = new import12.HelloDialog();
    _appEl_9.initComponent(_HelloDialog_9_3,compView_9);
    Text _text_10 = new Text('\n');
    dbgElm(_text_10,10,15,40);
    compView_9.createComp([],null);
    listen(_el_3,'focus',evt(_handle_focus_3_0));
    final subscription_0 = _MaterialInputComponent_3_4.onFocus.listen(evt(_handle_focus_3_0));
    listen(_el_6,'trigger',evt(_handle_trigger_6_0));
    listen(_el_6,'click',evt(_handle_click_6_1));
    listen(_el_6,'blur',evt(_handle_blur_6_2));
    listen(_el_6,'mouseup',evt(_handle_mouseup_6_3));
    listen(_el_6,'keypress',evt(_handle_keypress_6_4));
    listen(_el_6,'focus',evt(_handle_focus_6_5));
    listen(_el_6,'mousedown',evt(_handle_mousedown_6_6));
    final subscription_1 = _MaterialButtonComponent_6_4.trigger.listen(evt(_handle_trigger_6_0));
    init([],[
      _el_0,_text_1,_text_2,_el_3,_text_4,_text_5,_el_6,_text_7,_text_8,_el_9,_text_10
    ]
    ,[
      subscription_0,subscription_1
    ]
    );
    return null;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import2.DeferredValidator) && ((3 <= requestNodeIndex) && (requestNodeIndex <= 4)))) { return _DeferredValidator_3_3; }
    if ((identical(token, import3.MaterialInputComponent) && ((3 <= requestNodeIndex) && (requestNodeIndex <= 4)))) { return _MaterialInputComponent_3_4; }
    if ((identical(token, import4.Focusable) && ((3 <= requestNodeIndex) && (requestNodeIndex <= 4)))) { return _Focusable_3_5; }
    if ((identical(token, import4.AutoFocusDirective) && ((3 <= requestNodeIndex) && (requestNodeIndex <= 4)))) { return _AutoFocusDirective_3_6; }
    if ((identical(token, import5.BaseMaterialInput) && ((3 <= requestNodeIndex) && (requestNodeIndex <= 4)))) { return _BaseMaterialInput_3_7; }
    if ((identical(token, import6.MaterialInputDefaultValueAccessor) && ((3 <= requestNodeIndex) && (requestNodeIndex <= 4)))) { return _MaterialInputDefaultValueAccessor_3_8; }
    if ((identical(token, import7.NG_VALIDATORS) && ((3 <= requestNodeIndex) && (requestNodeIndex <= 4)))) { return _NG_VALIDATORS_3_9; }
    if ((identical(token, import8.ReferenceDirective) && ((3 <= requestNodeIndex) && (requestNodeIndex <= 4)))) { return _ReferenceDirective_3_10; }
    if ((identical(token, import9.AcxDarkTheme) && ((6 <= requestNodeIndex) && (requestNodeIndex <= 7)))) { return _AcxDarkTheme_6_3; }
    if ((identical(token, import10.MaterialButtonComponent) && ((6 <= requestNodeIndex) && (requestNodeIndex <= 7)))) { return _MaterialButtonComponent_6_4; }
    if ((identical(token, import11.ButtonDirective) && ((6 <= requestNodeIndex) && (requestNodeIndex <= 7)))) { return _ButtonDirective_6_5; }
    if ((identical(token, import12.HelloDialog) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _HelloDialog_9_3; }
    if ((identical(token, import13.defaultPopupPositions) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _defaultPopupPositions_9_4; }
    if ((identical(token, import14.ManagedZone) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _ManagedZone_9_5; }
    if ((identical(token, Window) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _Window_9_6; }
    if ((identical(token, import16.DomService) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _DomService_9_7; }
    if ((identical(token, import17.AcxImperativeViewUtils) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _AcxImperativeViewUtils_9_8; }
    if ((identical(token, Document) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _Document_9_9; }
    if ((identical(token, import18.DomRuler) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _DomRuler_9_10; }
    if ((identical(token, import19.overlayContainerName) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _overlayContainerName_9_11; }
    if ((identical(token, import19.overlayContainerParent) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _overlayContainerParent_9_12; }
    if ((identical(token, import19.overlayContainerToken) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _overlayContainerToken_9_13; }
    if ((identical(token, import19.overlaySyncDom) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _overlaySyncDom_9_14; }
    if ((identical(token, import20.OverlayStyleConfig) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _OverlayStyleConfig_9_15; }
    if ((identical(token, import21.ZIndexer) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _ZIndexer_9_16; }
    if ((identical(token, import19.OverlayDomRenderService) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _OverlayDomRenderService_9_17; }
    if ((identical(token, import22.OverlayService) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _OverlayService_9_18; }
    if ((identical(token, import23.DomPopupSourceFactory) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _DomPopupSourceFactory_9_19; }
    if ((identical(token, import13.PopupService) && ((9 <= requestNodeIndex) && (requestNodeIndex <= 10)))) { return _PopupService_9_20; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    bool changed = true;
    dbg(3,2,0);
    changed = false;
    dbg(3,3,16);
    final currVal_1 = 'Your name';
    if (import47.checkBinding(_expr_1,currVal_1)) {
      _MaterialInputComponent_3_4.label = currVal_1;
      changed = true;
      _expr_1 = currVal_1;
    }
    dbg(3,4,16);
    final currVal_2 = '';
    if (import47.checkBinding(_expr_2,currVal_2)) {
      _MaterialInputComponent_3_4.floatingLabel = currVal_2;
      changed = true;
      _expr_2 = currVal_2;
    }
    if (changed) { _appEl_3.componentView.markAsCheckOnce(); }
    dbg(3,5,16);
    final currVal_3 = '';
    if (import47.checkBinding(_expr_3,currVal_3)) {
      _AutoFocusDirective_3_6.autoFocus = currVal_3;
      _expr_3 = currVal_3;
    }
    if ((identical(this.cdState, ChangeDetectorState.NeverChecked) && !import47.AppViewUtils.throwOnChanges)) { _AutoFocusDirective_3_6.ngOnInit(); }
    dbg(6,8,0);
    changed = false;
    dbg(6,8,17);
    final currVal_11 = '';
    if (import47.checkBinding(_expr_11,currVal_11)) {
      _MaterialButtonComponent_6_4.raised = currVal_11;
      changed = true;
      _expr_11 = currVal_11;
    }
    if (changed) { _appEl_6.componentView.markAsCheckOnce(); }
    dbg(9,15,13);
    final currVal_17 = _MaterialInputComponent_3_4.inputText;
    if (import47.checkBinding(_expr_17,currVal_17)) {
      _HelloDialog_9_3.name = currVal_17;
      _expr_17 = currVal_17;
    }
    this.detectContentChildrenChanges();
    dbg(6,8,0);
    final currVal_12 = _MaterialButtonComponent_6_4.raised;
    if (import47.checkBinding(_expr_12,currVal_12)) {
      updateElemClass(_el_6,'is-raised',currVal_12);
      _expr_12 = currVal_12;
    }
    dbg(6,8,0);
    final currVal_13 = _MaterialButtonComponent_6_4.disabledStr;
    if (import47.checkBinding(_expr_13,currVal_13)) {
      setAttr(_el_6,'aria-disabled',((currVal_13 == null)? null: currVal_13.toString()));
      _expr_13 = currVal_13;
    }
    dbg(6,8,0);
    final currVal_14 = _MaterialButtonComponent_6_4.tabIndex;
    if (import47.checkBinding(_expr_14,currVal_14)) {
      setAttr(_el_6,'tabindex',((currVal_14 == null)? null: currVal_14.toString()));
      _expr_14 = currVal_14;
    }
    dbg(6,8,0);
    final currVal_15 = _MaterialButtonComponent_6_4.disabled;
    if (import47.checkBinding(_expr_15,currVal_15)) {
      updateElemClass(_el_6,'is-disabled',currVal_15);
      _expr_15 = currVal_15;
    }
    dbg(6,8,0);
    final currVal_16 = _MaterialButtonComponent_6_4.zElevation;
    if (import47.checkBinding(_expr_16,currVal_16)) {
      setAttr(_el_6,'elevation',((currVal_16 == null)? null: currVal_16.toString()));
      _expr_16 = currVal_16;
    }
    this.detectViewChildrenChanges();
    if (!import47.AppViewUtils.throwOnChanges) {
      dbg(3,2,0);
      if (identical(this.cdState, ChangeDetectorState.NeverChecked)) { _MaterialInputComponent_3_4.ngAfterViewInit(); }
    }
  }
  void destroyInternal() {
    dbg(3,2,0);
    _MaterialInputComponent_3_4.ngOnDestroy();
    _AutoFocusDirective_3_6.ngOnDestroy();
    _MaterialInputDefaultValueAccessor_3_8.ngOnDestroy();
  }
  bool _handle_focus_3_0($event) {
    _appEl_3.componentView.markPathToRootAsCheckOnce();
    dbg(3,2,0);
    final dynamic pd_0 = !identical((_MaterialInputComponent_3_4.focus() as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_trigger_6_0($event) {
    this.markPathToRootAsCheckOnce();
    dbg(6,9,17);
    final dynamic pd_0 = !identical((_HelloDialog_9_3.open() as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_click_6_1($event) {
    _appEl_6.componentView.markPathToRootAsCheckOnce();
    dbg(6,8,0);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_6_4.handleClick($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_blur_6_2($event) {
    _appEl_6.componentView.markPathToRootAsCheckOnce();
    dbg(6,8,0);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_6_4.onBlur($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_mouseup_6_3($event) {
    _appEl_6.componentView.markPathToRootAsCheckOnce();
    dbg(6,8,0);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_6_4.onMouseUp($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_keypress_6_4($event) {
    _appEl_6.componentView.markPathToRootAsCheckOnce();
    dbg(6,8,0);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_6_4.handleKeyPress($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_focus_6_5($event) {
    _appEl_6.componentView.markPathToRootAsCheckOnce();
    dbg(6,8,0);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_6_4.onFocus($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_mousedown_6_6($event) {
    _appEl_6.componentView.markPathToRootAsCheckOnce();
    dbg(6,8,0);
    final dynamic pd_0 = !identical((_MaterialButtonComponent_6_4.onMouseDown($event) as dynamic), false);
    return (true && pd_0);
  }
}
AppView viewFactory_AppComponent0(import31.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_AppComponent, null)) { (renderType_AppComponent = import47.appViewUtils.createRenderComponentType('asset:get_started/lib/app_component.html',0,import49.ViewEncapsulation.Emulated,styles_AppComponent)); }
  return new ViewAppComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_AppComponentHost = const [];
  const List<StaticNodeDebugInfo> nodeDebugInfos_AppComponentHost0 = const [const StaticNodeDebugInfo(const [
    import26.AppComponent,import13.defaultPopupPositions,import14.ManagedZone,Window,
    import16.DomService,import17.AcxImperativeViewUtils,Document,import18.DomRuler,import19.overlayContainerName,
    import19.overlayContainerParent,import19.overlayContainerToken,import19.overlaySyncDom,
    import20.OverlayStyleConfig,import21.ZIndexer,import19.OverlayDomRenderService,import22.OverlayService,
    import23.DomPopupSourceFactory,import13.PopupService
  ]
,import26.AppComponent,const <String, dynamic>{})];
RenderComponentType renderType_AppComponentHost;
class ViewAppComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import26.AppComponent _AppComponent_0_3;
  dynamic __defaultPopupPositions_0_4;
  import28.Angular2ManagedZone __ManagedZone_0_5;
  dynamic __Window_0_6;
  dynamic __DomService_0_7;
  import17.AcxImperativeViewUtils __AcxImperativeViewUtils_0_8;
  dynamic __Document_0_9;
  import18.DomRuler __DomRuler_0_10;
  dynamic __overlayContainerName_0_11;
  dynamic __overlayContainerParent_0_12;
  dynamic __overlayContainerToken_0_13;
  dynamic __overlaySyncDom_0_14;
  import20.OverlayStyleConfig __OverlayStyleConfig_0_15;
  import21.ZIndexer __ZIndexer_0_16;
  import19.OverlayDomRenderService __OverlayDomRenderService_0_17;
  import29.OverlayDomService __OverlayService_0_18;
  import23.DomPopupSourceFactory __DomPopupSourceFactory_0_19;
  import13.PopupService __PopupService_0_20;
  ViewAppComponentHost0(import31.Injector parentInjector,ViewContainer declarationEl): super(ViewAppComponentHost0,renderType_AppComponentHost,import32.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_AppComponentHost0);
  dynamic get _defaultPopupPositions_0_4 {
    dbg(0,0,0);
    if ((this.__defaultPopupPositions_0_4 == null)) { (__defaultPopupPositions_0_4 = import33.inlinePositions); }
    return this.__defaultPopupPositions_0_4;
  }
  import28.Angular2ManagedZone get _ManagedZone_0_5 {
    dbg(0,0,0);
    if ((this.__ManagedZone_0_5 == null)) { (__ManagedZone_0_5 = new import28.Angular2ManagedZone(this.parentInjector.get(import34.NgZone))); }
    return this.__ManagedZone_0_5;
  }
  dynamic get _Window_0_6 {
    dbg(0,0,0);
    if ((this.__Window_0_6 == null)) { (__Window_0_6 = import35.getWindow()); }
    return this.__Window_0_6;
  }
  dynamic get _DomService_0_7 {
    dbg(0,0,0);
    if ((this.__DomService_0_7 == null)) { (__DomService_0_7 = import36.createDomService(this.parentInjector.get(import16.DomService,null),this.parentInjector.get(import37.Disposer,null),this._ManagedZone_0_5,this._Window_0_6)); }
    return this.__DomService_0_7;
  }
  import17.AcxImperativeViewUtils get _AcxImperativeViewUtils_0_8 {
    dbg(0,0,0);
    if ((this.__AcxImperativeViewUtils_0_8 == null)) { (__AcxImperativeViewUtils_0_8 = new import17.AcxImperativeViewUtils(this.parentInjector.get(import38.DynamicComponentLoader),this._DomService_0_7)); }
    return this.__AcxImperativeViewUtils_0_8;
  }
  dynamic get _Document_0_9 {
    dbg(0,0,0);
    if ((this.__Document_0_9 == null)) { (__Document_0_9 = import35.getDocument()); }
    return this.__Document_0_9;
  }
  import18.DomRuler get _DomRuler_0_10 {
    dbg(0,0,0);
    if ((this.__DomRuler_0_10 == null)) { (__DomRuler_0_10 = new import18.DomRuler(this._Document_0_9,this._DomService_0_7)); }
    return this.__DomRuler_0_10;
  }
  dynamic get _overlayContainerName_0_11 {
    dbg(0,0,0);
    if ((this.__overlayContainerName_0_11 == null)) { (__overlayContainerName_0_11 = 'default'); }
    return this.__overlayContainerName_0_11;
  }
  dynamic get _overlayContainerParent_0_12 {
    dbg(0,0,0);
    if ((this.__overlayContainerParent_0_12 == null)) { (__overlayContainerParent_0_12 = import39.getOverlayContainerParent(this._Document_0_9)); }
    return this.__overlayContainerParent_0_12;
  }
  dynamic get _overlayContainerToken_0_13 {
    dbg(0,0,0);
    if ((this.__overlayContainerToken_0_13 == null)) { (__overlayContainerToken_0_13 = import39.getDefaultContainer(this._overlayContainerName_0_11,this._overlayContainerParent_0_12)); }
    return this.__overlayContainerToken_0_13;
  }
  dynamic get _overlaySyncDom_0_14 {
    dbg(0,0,0);
    if ((this.__overlaySyncDom_0_14 == null)) { (__overlaySyncDom_0_14 = true); }
    return this.__overlaySyncDom_0_14;
  }
  import20.OverlayStyleConfig get _OverlayStyleConfig_0_15 {
    dbg(0,0,0);
    if ((this.__OverlayStyleConfig_0_15 == null)) { (__OverlayStyleConfig_0_15 = new import20.OverlayStyleConfig(this._Document_0_9)); }
    return this.__OverlayStyleConfig_0_15;
  }
  import21.ZIndexer get _ZIndexer_0_16 {
    dbg(0,0,0);
    if ((this.__ZIndexer_0_16 == null)) { (__ZIndexer_0_16 = new import21.ZIndexer()); }
    return this.__ZIndexer_0_16;
  }
  import19.OverlayDomRenderService get _OverlayDomRenderService_0_17 {
    dbg(0,0,0);
    if ((this.__OverlayDomRenderService_0_17 == null)) { (__OverlayDomRenderService_0_17 = new import19.OverlayDomRenderService(this._OverlayStyleConfig_0_15,this._overlayContainerToken_0_13,this._overlayContainerName_0_11,this._DomRuler_0_10,this._DomService_0_7,this._AcxImperativeViewUtils_0_8,this._overlaySyncDom_0_14,this._ZIndexer_0_16)); }
    return this.__OverlayDomRenderService_0_17;
  }
  import29.OverlayDomService get _OverlayService_0_18 {
    dbg(0,0,0);
    if ((this.__OverlayService_0_18 == null)) { (__OverlayService_0_18 = new import29.OverlayDomService(this.parentInjector.get(import34.NgZone),this._overlaySyncDom_0_14,this._OverlayDomRenderService_0_17,this.parentInjector.get(import22.OverlayService,null))); }
    return this.__OverlayService_0_18;
  }
  import23.DomPopupSourceFactory get _DomPopupSourceFactory_0_19 {
    dbg(0,0,0);
    if ((this.__DomPopupSourceFactory_0_19 == null)) { (__DomPopupSourceFactory_0_19 = new import23.DomPopupSourceFactory(this._Window_0_6,this._DomRuler_0_10)); }
    return this.__DomPopupSourceFactory_0_19;
  }
  import13.PopupService get _PopupService_0_20 {
    dbg(0,0,0);
    if ((this.__PopupService_0_20 == null)) { (__PopupService_0_20 = new import13.PopupService(this._defaultPopupPositions_0_4,this._OverlayService_0_18,this._ZIndexer_0_16)); }
    return this.__PopupService_0_20;
  }
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('my-app',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_AppComponent0(this.injector(0),_appEl_0);
    _AppComponent_0_3 = new import26.AppComponent();
    _appEl_0.initComponent(_AppComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import26.AppComponent) && (0 == requestNodeIndex))) { return _AppComponent_0_3; }
    if ((identical(token, import13.defaultPopupPositions) && (0 == requestNodeIndex))) { return _defaultPopupPositions_0_4; }
    if ((identical(token, import14.ManagedZone) && (0 == requestNodeIndex))) { return _ManagedZone_0_5; }
    if ((identical(token, Window) && (0 == requestNodeIndex))) { return _Window_0_6; }
    if ((identical(token, import16.DomService) && (0 == requestNodeIndex))) { return _DomService_0_7; }
    if ((identical(token, import17.AcxImperativeViewUtils) && (0 == requestNodeIndex))) { return _AcxImperativeViewUtils_0_8; }
    if ((identical(token, Document) && (0 == requestNodeIndex))) { return _Document_0_9; }
    if ((identical(token, import18.DomRuler) && (0 == requestNodeIndex))) { return _DomRuler_0_10; }
    if ((identical(token, import19.overlayContainerName) && (0 == requestNodeIndex))) { return _overlayContainerName_0_11; }
    if ((identical(token, import19.overlayContainerParent) && (0 == requestNodeIndex))) { return _overlayContainerParent_0_12; }
    if ((identical(token, import19.overlayContainerToken) && (0 == requestNodeIndex))) { return _overlayContainerToken_0_13; }
    if ((identical(token, import19.overlaySyncDom) && (0 == requestNodeIndex))) { return _overlaySyncDom_0_14; }
    if ((identical(token, import20.OverlayStyleConfig) && (0 == requestNodeIndex))) { return _OverlayStyleConfig_0_15; }
    if ((identical(token, import21.ZIndexer) && (0 == requestNodeIndex))) { return _ZIndexer_0_16; }
    if ((identical(token, import19.OverlayDomRenderService) && (0 == requestNodeIndex))) { return _OverlayDomRenderService_0_17; }
    if ((identical(token, import22.OverlayService) && (0 == requestNodeIndex))) { return _OverlayService_0_18; }
    if ((identical(token, import23.DomPopupSourceFactory) && (0 == requestNodeIndex))) { return _DomPopupSourceFactory_0_19; }
    if ((identical(token, import13.PopupService) && (0 == requestNodeIndex))) { return _PopupService_0_20; }
    return notFoundResult;
  }
}
AppView viewFactory_AppComponentHost0(import31.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_AppComponentHost, null)) { (renderType_AppComponentHost = import47.appViewUtils.createRenderComponentType('',0,import49.ViewEncapsulation.Emulated,styles_AppComponentHost)); }
  return new ViewAppComponentHost0(parentInjector,declarationEl);
}
const import50.ComponentFactory AppComponentNgFactory = const import50.ComponentFactory('my-app',viewFactory_AppComponentHost0,import26.AppComponent,_METADATA);
const _METADATA = const <dynamic>[AppComponent, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(AppComponent, new _ngRef.ReflectionInfo(
const <dynamic>[AppComponentNgFactory],
const [],
() => new AppComponent())
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
