@JS('mapboxgl')
library mapboxgl.style.evaluation_parameters;

import 'package:js/js.dart';

@JS()
class EvaluationParameters {
  external num get zoom;
  external num get now;
  external num get fadeDuration;
  external dynamic get zoomHistory;
  external dynamic get transition;

  external factory EvaluationParameters(num zoom, [dynamic options]);

  external bool isSupportedScript(String str);

  external crossFadingFactor();

  external dynamic getCrossfadeParameters();
}
