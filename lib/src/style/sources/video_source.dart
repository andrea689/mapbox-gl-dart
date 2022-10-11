library mapboxgl.style.sources.image_source;

import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

class VideoSource extends Source<VideoSourceJsImpl> {
  static const type = 'video';
  List<String> get urls => jsObject.urls;
  dynamic get coordinates => jsObject.coordinates;

  factory VideoSource({
    required List<String> urls,
    required dynamic coordinates,
  }) {
    if (coordinates == null) {
      throw Exception('Specify coordinates');
    }
    if ((coordinates as List?)?.length != 4) {
      throw Exception(
          'Video coordinates must be an array of four longitude latitude pairs');
    }
    if (urls.isEmpty) {
      throw Exception('Specify at least 1 url');
    }
    return VideoSource.fromJsObject(VideoSourceJsImpl(
      type: type,
      urls: urls,
      coordinates: coordinates,
    ));
  }

  VideoSource play() => VideoSource.fromJsObject(jsObject.play());

  VideoSource pause() => VideoSource.fromJsObject(jsObject.pause());

  VideoSource setCoordinates(dynamic coordinates) =>
      VideoSource.fromJsObject(jsObject.setCoordinates(coordinates));

  VideoSource.fromJsObject(VideoSourceJsImpl jsObject)
      : super.fromJsObject(jsObject);

  @override
  get dict => {
        'type': type,
        'urls': urls,
        'coordinates': coordinates,
      };
}
