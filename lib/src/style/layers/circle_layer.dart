library mapboxgl.style.layers.circle_layer;

import 'package:js/js_util.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

class CircleLayer {
  String type;
  String id;
  Source source;
  dynamic paint;
  dynamic sourceLayer;

  CircleLayer({
    this.id,
    this.source,
    this.paint,
    this.sourceLayer,
  }) {
    type = 'circle';
  }

  dynamic toJs() {
    return jsify({
      'id': id,
      'type': type,
      'source': source.toDict(),
      'source-layer': sourceLayer,
      'paint': paint.toDict(),
    });
  }
}

class CirclePaint {
  dynamic circleRadius;
  dynamic circleColor;

  CirclePaint({
    this.circleRadius,
    this.circleColor,
  });

  dynamic toDict() {
    return {
      'circle-radius': this.circleRadius,
      'circle-color': this.circleColor,
    };
  }
}
