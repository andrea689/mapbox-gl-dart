library mapboxgl.ui.control.logo_control;

import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

/// A `LogoControl` is a control that adds the Mapbox watermark
/// to the map as required by the [terms of service](https://www.mapbox.com/tos/) for Mapbox
/// vector tiles and core styles.
class LogoControl extends JsObjectWrapper<LogoControlJsImpl> {
  factory LogoControl() => LogoControl.fromJsObject(LogoControlJsImpl());

  onAdd(MapboxMap map) => jsObject.onAdd(map.jsObject);

  onRemove() => jsObject.onRemove();

  getDefaultPosition() => jsObject.getDefaultPosition();

  /// Creates a new LogoControl from a [jsObject].
  LogoControl.fromJsObject(LogoControlJsImpl jsObject)
      : super.fromJsObject(jsObject);
}
