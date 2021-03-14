library mapboxgl.geo.point;

import 'package:mapbox_gl_dart/src/interop/interop.dart';

class Point extends JsObjectWrapper<PointJsImpl> {
  num get x => jsObject.x;
  num get y => jsObject.y;
  factory Point(
    num x,
    num y,
  ) =>
      Point.fromJsObject(PointJsImpl(
        x: x,
        y: y,
      ));
  Point mult(k) => Point.fromJsObject(jsObject.mult(k));

  /// Creates a new LngLat from a [jsObject].
  Point.fromJsObject(PointJsImpl jsObject) : super.fromJsObject(jsObject);
}
