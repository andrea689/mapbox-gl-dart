@JS('mapboxgl')
library mapboxgl.interop.geo.image_options;

import 'package:js/js.dart';

@JS()
@anonymous
class ImageOptionsJsImpl {
  external String get url;
  external dynamic get coordinates;
  external factory ImageOptionsJsImpl({
    String? url,
    dynamic coordinates,
  });
}
