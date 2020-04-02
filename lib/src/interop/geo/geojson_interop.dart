@JS('mapboxgl')
library mapboxgl.interop.geo.geojson;

import 'package:js/js.dart';

@JS()
@anonymous
class FeatureCollectionJsImpl {
  external String get type;
  external List<FeatureJsImpl> get features;
  external factory FeatureCollectionJsImpl({
    String type,
    List<FeatureJsImpl> features,
  });
}

@JS()
@anonymous
class FeatureJsImpl {
  external num get id;
  external set id(num id);
  external String get type;
  external GeometryJsImpl get geometry;
  external dynamic get properties;
  external String get source;
  external factory FeatureJsImpl({
    num id,
    String type,
    GeometryJsImpl geometry,
    dynamic properties,
    String source,
  });
}

@JS()
@anonymous
class GeometryJsImpl {
  external String get type;
  external dynamic get coordinates;
  external factory GeometryJsImpl({
    String type,
    dynamic coordinates,
  });
}
