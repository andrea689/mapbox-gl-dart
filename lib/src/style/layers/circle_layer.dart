@JS('mapboxgl')
library mapboxgl.style.layers.circle_layer;

import 'package:js/js.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

class CircleLayer {
  @JS('type')
  external set _type(String t);
  @JS('id')
  external set _id(String t);
  @JS('source')
  external set _source(Source t);
  @JS('paint')
  external set _paint(dynamic t);
  @JS('source-layer')
  external set _sourceLayer(dynamic t);

  CircleLayer({
    String id,
    Source source,
    dynamic paint,
    String sourceLayer,
  }) {
    this._type = 'circle';
    this._id = id;
    this._source = source;
    this._paint = paint;
    this._sourceLayer = sourceLayer;
  }
}

class CirclePaint {
  @JS('circle-radius')
  external set _circleRadius(dynamic t);
  @JS('circle-color')
  external set _circleColor(dynamic t);

  CirclePaint({
    dynamic circleRadius,
    dynamic circleColor,
  }) {
    this._circleRadius = circleRadius;
    this._circleColor = circleColor;
  }
}
