library mapboxgl.style.sources.vector_source;

import 'package:js/js_util.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

class VectorSource implements Source {
  String type;
  String url;
  List<String> tiles;

  VectorSource({
    this.url,
    this.tiles,
  }) {
    this.type = 'vector';
  }

  @override
  toDict() {
    Map<String, dynamic> dict = {
      'type': type,
    };
    if (url != null) dict['url'] = url;
    if (tiles != null) dict['tiles'] = tiles;
    return dict;
  }

  @override
  toJs() {
    return jsify(toDict());
  }
}
