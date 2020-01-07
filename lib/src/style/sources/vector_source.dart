library mapboxgl.style.sources.vector_source;

import 'package:js/js_util.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

class VectorSource implements Source {
  String type;
  String url;

  VectorSource({
    this.url,
  }) {
    this.type = 'vector';
  }

  @override
  toDict() {
    return {
      'type': type,
      'url': url,
    };
  }

  @override
  toJs() {
    return jsify(toDict());
  }
}
