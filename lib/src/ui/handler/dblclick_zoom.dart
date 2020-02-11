library mapboxgl.ui.handler.dbclick_zoom;

import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

class DoubleClickZoomHandler
    extends JsObjectWrapper<DoubleClickZoomHandlerJsImpl> {
  ///  Returns a Boolean indicating whether the "double click to zoom" interaction is enabled.
  ///
  ///  @returns {boolean} `true` if the "double click to zoom" interaction is enabled.
  bool isEnabled() => jsObject.isEnabled();

  ///  Returns a Boolean indicating whether the "double click to zoom" interaction is active, i.e. currently being used.
  ///
  ///  @returns {boolean} `true` if the "double click to zoom" interaction is active.
  bool isActive() => jsObject.isActive();

  ///  Enables the "double click to zoom" interaction.
  ///
  ///  @example
  ///  map.doubleClickZoom.enable();
  enable() => jsObject.enable();

  ///  Disables the "double click to zoom" interaction.
  ///
  ///  @example
  ///  map.doubleClickZoom.disable();
  disable() => jsObject.disable();

  onTouchStart(MapTouchEvent e) => jsObject.onTouchStart(e.jsObject);

  onDblClick(MapMouseEvent e) => jsObject.onDblClick(e.jsObject);

  /// Creates a new DoubleClickZoomHandler from a [jsObject].
  DoubleClickZoomHandler.fromJsObject(DoubleClickZoomHandlerJsImpl jsObject)
      : super.fromJsObject(jsObject);
}
