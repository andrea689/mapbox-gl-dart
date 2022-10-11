@JS('mapboxgl')
library mapboxgl.style.interop.sources.canvas_source;

import 'package:js/js.dart';

@JS()
@anonymous
class CanvasSourceJsImpl {
  external bool get animate;
  external String get canvas;
  external dynamic get coordinates;
  external factory CanvasSourceJsImpl({
    String? type,
    bool? animate = false,
    String canvas,
    dynamic coordinates,
  });

  external CanvasSourceJsImpl play();
  external CanvasSourceJsImpl pause();
  external CanvasSourceJsImpl setCoordinates(dynamic coordinates);
}
