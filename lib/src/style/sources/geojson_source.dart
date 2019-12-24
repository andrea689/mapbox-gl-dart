@JS('mapboxgl')
library mapboxgl.style.sources.geojson_source;

import 'package:js/js.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

@JS()
@anonymous
class GeoJsonSource implements Source {
  external factory GeoJsonSource({
    String type,
    FeatureCollection data,
  });
}

@JS()
@anonymous
class FeatureCollection {
  external factory FeatureCollection({
    String type,
    List<Feature> features,
  });
}

@JS()
@anonymous
class Feature {
  external factory Feature({
    String type,
    Properties properties,
    Geometry geometry,
  });
}

@JS()
@anonymous
class Geometry {
  external factory Geometry({
    String type,
    List<num> coordinates,
  });
}

@JS()
@anonymous
class Properties {
  external factory Properties({
    String description,
    String icon,
  });
}
