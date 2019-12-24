@JS('mapboxgl')
library mapboxgl.style.layers.symbol_layer;

import 'package:js/js.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

class SymbolLayer {
  @JS('type')
  external set _type(String t);
  @JS('id')
  external set _id(String t);
  @JS('source')
  external set _source(GeoJsonSource t);
  @JS('layout')
  external set _layout(Layout t);

  SymbolLayer({
    String id,
    GeoJsonSource source,
    Layout layout,
  }) {
    this._type = 'symbol';
    this._id = id;
    this._source = source;
    this._layout = layout;
  }
}
