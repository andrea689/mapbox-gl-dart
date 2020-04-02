library mapboxgl.style.sources.geojson_source;

import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

class GeoJsonSource extends Source<GeoJsonSourceJsImpl> {
  FeatureCollection get data => FeatureCollection.fromJsObject(jsObject.data);

  factory GeoJsonSource({
    FeatureCollection data,
  }) =>
      GeoJsonSource.fromJsObject(GeoJsonSourceJsImpl(
        type: 'geojson',
        data: data.jsObject,
      ));

  GeoJsonSource setData(FeatureCollection featureCollection) =>
      GeoJsonSource.fromJsObject(jsObject.setData(featureCollection.jsObject));

  /// Creates a new GeoJsonSource from a [jsObject].
  GeoJsonSource.fromJsObject(GeoJsonSourceJsImpl jsObject)
      : super.fromJsObject(jsObject);

  @override
  get dict => {
        'type': 'geojson',
        'data': data.jsObject,
      };
}
