library mapboxgl.style.layers.symbol_layer;

import 'package:js/js_util.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

class SymbolLayer {
  String type;
  String id;
  GeoJsonSource source;
  Layout layout;

  SymbolLayer({
    this.id,
    this.source,
    this.layout,
  }) {
    this.type = 'symbol';
  }

  dynamic toDict() {
    return {
      'id': id,
      'type': type,
      'source': source.toDict(),
      'layout': layout.toDict(),
    };
  }

  dynamic toJs() {
    return jsify(toDict());
  }
}
