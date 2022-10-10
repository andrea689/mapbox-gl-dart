@JS('mapboxgl')
library mapboxgl.style.interop.sources.image_source;

import 'package:js/js.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

@JS()
@anonymous
class ImageSourceJsImpl {
  external String get url;
  external dynamic get coordinates;
  external factory ImageSourceJsImpl({
    String? type,
    String url,
    dynamic coordinates,
  });

  external ImageSourceJsImpl updateImage(ImageOptionsJsImpl imageOptions);
}
