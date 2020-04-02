@JS('mapboxgl')
library mapboxgl.style.interop.sources.geojson_source;

import 'package:js/js.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

@JS()
@anonymous
class GeoJsonSourceJsImpl {
  external FeatureCollectionJsImpl get data;
  external factory GeoJsonSourceJsImpl({
    String type,
    FeatureCollectionJsImpl data,
  });

  external GeoJsonSourceJsImpl setData(
      FeatureCollectionJsImpl featureCollection);
}
