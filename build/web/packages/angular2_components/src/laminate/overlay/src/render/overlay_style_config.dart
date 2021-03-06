// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library angular2_components.laminate.overlay.src.render.overlay_style_config;

import 'dart:html';

import 'package:angular2/angular2.dart';

/// Adds CSS to the `document.head` location in order to use overlays.
///
/// It is possible to override the default behavior by binding your own:
///     const Provider(OverlayStyleConfig, useClass: CustomOverlayStyleConfig);
@Injectable()
class OverlayStyleConfig {
  static const _styleId = "__overlay_styles";
  // TODO(google): Move these styles out into a scss file and inline them.
  static const inlinedStyles = r'''
  #default-acx-overlay-container,
  .acx-overlay-container {
    position: absolute;

    /* Disable event captures. This is an invisible container! */
    pointer-events: none;

    /* Make this full width and height in the viewport. */
    top: 0;
    left: 0;

    width: 100%;
    height: 100%;

    /* TODO(google): Use the ACX z-index guide instead. */
    z-index: 10;
  }

  .acx-overlay-container > .pane {
    display: flex;
    /* TODO(google): verify prefixing flexbox fixes popups in IE */
    display: -ms-flexbox;
    position: absolute;

    /* TODO(google): Use the ACX z-index guide instead. */
    z-index: 11;

    /* Disable event captures. This is an invisible container!
       Panes that would like to capture events can enable this with .modal. */
    pointer-events: none;
  }

  /* Children should have normal events. */
  .acx-overlay-container > .pane > * { pointer-events: auto; }

  .acx-overlay-container > .pane.modal {
    background: rgba(33,33,33,.4);
    pointer-events: auto;

    /* TODO(google): Pull out into a .fixed class instead. */
    position: fixed;
  }

  /* TODO(google): This only makes sense when it's flex column (default).
     Consider either just using the CSS names directly, or another name. */

  .acx-overlay-container > .pane.align-x-start,
  .acx-overlay-container > .pane.align-x-start > * {
    justify-content: flex-start;
    display: flex;
    display: -ms-flexbox;
  }

  .acx-overlay-container > .pane.align-x-center,
  .acx-overlay-container > .pane.align-x-center > * {
    justify-content: center;
    display: flex;
    display: -ms-flexbox;
  }

  .acx-overlay-container > .pane.align-x-end,
  .acx-overlay-container > .pane.align-x-end > *  {
    justify-content: flex-end;
    display: flex;
    display: -ms-flexbox;
  }

  .acx-overlay-container > .pane.align-y-start,
  .acx-overlay-container > .pane.align-y-start > * {
    align-items: flex-start;
    display: flex;
    display: -ms-flexbox;
  }

  .acx-overlay-container > .pane.align-y-center,
  .acx-overlay-container > .pane.align-y-center > * {
    align-items: center;
    display: flex;
    display: -ms-flexbox;
  }

  .acx-overlay-container > .pane.align-y-end,
  .acx-overlay-container > .pane.align-y-end > * {
    align-items: flex-end;
    display: flex;
    display: -ms-flexbox;
  }

  /* Optional debug mode that highlights the container and individual panes.
     TODO(google): Pull this into a mixin so it won't get auto-exported. */
  .acx-overlay-container.debug {
    background: rgba(255, 0, 0, 0.15);
  }

  .acx-overlay-container.debug > .pane {
    background: rgba(0, 0, 2555, 0.15);
  }

  .acx-overlay-container.debug > .pane.modal {
    background: rgba(0, 0, 0, 0.30);
  }
''';

  final HeadElement _styleHost;
  bool _stylesRegistered = false;
  Document _document;

  OverlayStyleConfig(Document document)
      : _styleHost = document.querySelector('head'),
        _document = document;

  void registerStyles() {
    if (stylesRegistered) return;
    _styleHost.append(new StyleElement()
      ..id = _styleId
      ..text = inlinedStyles);
    _stylesRegistered = true;
  }

  bool get stylesRegistered {
    if (_stylesRegistered) return true;
    var styleNode = _document.querySelector('#$_styleId');
    if (styleNode != null) _stylesRegistered = true;
    return _stylesRegistered;
  }
}
