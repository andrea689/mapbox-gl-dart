library mapboxgl.style.sources.geojson_source;

import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

class GeoJsonSource extends Source<GeoJsonSourceJsImpl> {
  FeatureCollection get data => FeatureCollection.fromJsObject(jsObject.data);
  String? get promoteId => jsObject.promoteId;

  factory GeoJsonSource({
    required FeatureCollection data,
    String? promoteId,
  }) =>
      GeoJsonSource.fromJsObject(GeoJsonSourceJsImpl(
        type: 'geojson',
        promoteId: promoteId,
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
        'promoteId': promoteId,
        'data': data.jsObject,
      };
}
