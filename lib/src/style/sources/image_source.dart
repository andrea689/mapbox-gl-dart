library mapboxgl.style.sources.image_source;

import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

class ImageSource extends Source<ImageSourceJsImpl> {
  static const type = 'image';
  String? get url => jsObject.url;
  dynamic get coordinates => jsObject.coordinates;

  factory ImageSource({
    required String url,
    dynamic coordinates,
  }) {
    if (coordinates == null) {
      throw Exception('Specify coordinates');
    }
    if ((coordinates as List?)?.length != 4) {
      throw Exception(
          'Image coordinates must be an array of four longitude latitude pairs');
    }
    return ImageSource.fromJsObject(ImageSourceJsImpl(
      type: type,
      url: url,
      coordinates: coordinates,
    ));
  }

  ImageSource updateImage(ImageOptions imageOptions) =>
      ImageSource.fromJsObject(jsObject.updateImage(imageOptions.jsObject));

  ImageSource setCoordinates(dynamic coordinates) =>
      ImageSource.fromJsObject(jsObject.setCoordinates(coordinates));

  ImageSource.fromJsObject(ImageSourceJsImpl jsObject)
      : super.fromJsObject(jsObject);

  @override
  get dict {
    Map<String, dynamic> dict = {
      'type': type,
    };
    if (url != null) {
      dict['url'] = url;
    }
    if (coordinates != null) {
      dict['coordinates'] = coordinates;
    }
    return dict;
  }
}
