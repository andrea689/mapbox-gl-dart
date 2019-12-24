@JS('mapboxgl')
library mapboxgl.style.sources.vector_source;

import 'package:js/js.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

class VectorSource implements Source {
  @JS('type')
  external set _type(String t);

  @JS('url')
  external set _url(String t);

  VectorSource({
    String url,
  }) {
    _type = 'vector';
    _url = url;
  }
}
