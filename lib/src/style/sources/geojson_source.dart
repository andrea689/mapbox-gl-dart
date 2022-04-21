library mapboxgl.style.sources.geojson_source;

import 'package:js/js.dart';
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

  GeoJsonSource getClusterChildren(
          int clusterId, Function(dynamic, List<Feature>?) callback) =>
      GeoJsonSource.fromJsObject(
        jsObject.getClusterChildren(
          clusterId,
          allowInterop((error, [children]) {
            callback(
              error,
              children?.map((child) => Feature.fromJsObject(child)).toList(),
            );
          }),
        ),
      );

  GeoJsonSource getClusterLeaves(int clusterId, int limit, int offset,
          Function(dynamic, List<Feature>?) callback) =>
      GeoJsonSource.fromJsObject(
        jsObject.getClusterLeaves(
          clusterId,
          limit,
          offset,
          allowInterop((error, [leaves]) {
            callback(
              error,
              leaves?.map((leaf) => Feature.fromJsObject(leaf)).toList(),
            );
          }),
        ),
      );

  GeoJsonSource getClusterExpansionZoom(
          int clusterId, Function(dynamic, int?) callback) =>
      GeoJsonSource.fromJsObject(
        jsObject.getClusterExpansionZoom(
          clusterId,
          allowInterop((error, [level]) => callback(error, level)),
        ),
      );

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
