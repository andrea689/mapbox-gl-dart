library mapboxgl.style.sources.canvas_source;

import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

class CanvasSource extends Source<CanvasSourceJsImpl> {
  static const type = 'canvas';
  bool get animate => jsObject.animate;
  String get canvas => jsObject.canvas;
  dynamic get coordinates => jsObject.coordinates;

  factory CanvasSource({
    required String canvas,
    bool? animate,
    required dynamic coordinates,
  }) {
    if (coordinates == null) {
      throw Exception('Specify coordinates');
    }
    if ((coordinates as List?)?.length != 4) {
      throw Exception(
          'Coordinates must be an array of four longitude latitude pairs');
    }
    return CanvasSource.fromJsObject(CanvasSourceJsImpl(
      type: type,
      animate: animate,
      canvas: canvas,
      coordinates: coordinates,
    ));
  }

  CanvasSource play() => CanvasSource.fromJsObject(jsObject.play());

  CanvasSource pause() => CanvasSource.fromJsObject(jsObject.pause());

  CanvasSource setCoordinates(dynamic coordinates) =>
      CanvasSource.fromJsObject(jsObject.setCoordinates(coordinates));

  CanvasSource.fromJsObject(CanvasSourceJsImpl jsObject)
      : super.fromJsObject(jsObject);

  @override
  get dict => {
        'type': type,
        'canvas': canvas,
        'coordinates': coordinates,
        'animate': animate
      };
}
