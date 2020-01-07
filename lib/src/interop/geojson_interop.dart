@JS('mapboxgl')
library mapboxgl.interop.geojson_interop;

import 'package:js/js.dart';

@JS()
@anonymous
class FeatureJsImpl {
  String type;
  GeometryJsImpl geometry;
  PropertiesJsImpl properties;
  String source;
  external factory FeatureJsImpl({String source});
}

@JS()
@anonymous
class GeometryJsImpl {
  String type;
  List<num> coordinates;
  external factory GeometryJsImpl({
    String type,
    List<num> coordinates,
  });
}

@JS()
@anonymous
class PropertiesJsImpl {
  String description;
  String icon;
  external factory PropertiesJsImpl({
    String description,
    String icon,
  });
}
