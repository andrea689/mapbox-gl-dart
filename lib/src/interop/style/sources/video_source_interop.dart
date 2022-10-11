@JS('mapboxgl')
library mapboxgl.style.interop.sources.video_source;

import 'package:js/js.dart';

@JS()
@anonymous
class VideoSourceJsImpl {
  external List<String> get urls;
  external dynamic get coordinates;
  external factory VideoSourceJsImpl({
    String? type,
    List<String> urls,
    dynamic coordinates,
  });

  external VideoSourceJsImpl play();
  external VideoSourceJsImpl pause();
  external VideoSourceJsImpl setCoordinates(dynamic coordinates);
}
