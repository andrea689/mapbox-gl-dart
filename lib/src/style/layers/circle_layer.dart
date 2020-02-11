library mapboxgl.style.layers.circle_layer;

import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';
import 'package:meta/meta.dart';

class CircleLayer extends Layer {
  String id;

  /// Source or String
  dynamic source;
  CirclePaint paint;
  dynamic sourceLayer;

  CircleLayer({
    @required this.id,
    this.source,
    this.paint,
    this.sourceLayer,
  });

  @override
  get jsObject => CircleLayerJsImpl.toJs(this);

  @override
  get dict => CircleLayerJsImpl.toDict(this);
}

class CirclePaint {
  dynamic circleRadius;
  dynamic circleColor;

  CirclePaint({
    this.circleRadius,
    this.circleColor,
  });

  get jsObject => CirclePaintJsImpl.toJs(this);

  get dict => CirclePaintJsImpl.toDict(this);
}
