library mapboxgl.geo.image_options;

import 'package:mapbox_gl_dart/src/interop/interop.dart';

class ImageOptions extends JsObjectWrapper<ImageOptionsJsImpl> {
  String get url => jsObject.url;
  dynamic get coordinates => jsObject.coordinates;

  factory ImageOptions({
    String? url,
    dynamic coordinates,
  }) {
    if (coordinates != null &&
        (coordinates is! List || coordinates.length != 4)) {
      throw Exception(
          'Image coordinates must be an array of four longitude latitude pairs');
    }
    return ImageOptions.fromJsObject(ImageOptionsJsImpl(
      url: url,
      coordinates: coordinates,
    ));
  }

  /// Creates a new ImageOptions from a [jsObject].
  ImageOptions.fromJsObject(ImageOptionsJsImpl jsObject)
      : super.fromJsObject(jsObject);
}
