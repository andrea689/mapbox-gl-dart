library mapboxgl.style.sources.geojson_source;

import 'package:js/js_util.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

class GeoJsonSource implements Source {
  String type;
  FeatureCollection data;

  GeoJsonSource({
    this.data,
  }) {
    this.type = 'geojson';
  }

  @override
  toDict() {
    return {
      'type': type,
      'data': data.toDict(),
    };
  }

  @override
  toJs() {
    return jsify(toDict());
  }
}

class FeatureCollection {
  String type;
  List<Feature> features;
  FeatureCollection({
    this.features,
  }) {
    this.type = 'FeatureCollection';
  }

  dynamic toDict() {
    return {
      'type': type,
      'features': features.map((f) => f.toDict()).toList(),
    };
  }

  toJs() {
    return jsify(toDict());
  }
}

class Feature {
  String type;
  Map<String, dynamic> properties;
  Geometry geometry;
  String source;
  Feature({
    this.properties,
    this.geometry,
  }) {
    this.type = 'Feature';
  }

  dynamic toDict() {
    return {
      'type': type,
      'properties': properties,
      'geometry': geometry.toDict(),
    };
  }
}

class Geometry {
  String type;
  List<dynamic> coordinates;
  Geometry({
    this.type,
    this.coordinates,
  });
  dynamic toDict() {
    return {
      'type': type,
      'coordinates': coordinates,
    };
  }
}
