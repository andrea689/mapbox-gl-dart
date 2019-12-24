@JS('mapboxgl')
library mapboxgl.style.style_image;

import 'package:js/js.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

@JS()
@anonymous
abstract class StyleImage {
  external dynamic get data;
  external num get pixelRatio;
  external bool get sdf;
  external num get version;
  external bool get hasRenderCallback;
  external StyleImageInterface get userImage;
}

@JS()
@anonymous
abstract class StyleImageInterface {
  external num get width;
  external num get height;
  external dynamic get data;
  external Function get render;
  external Function(MapboxMap map, String id) get onAdd;
  external Function get onRemove;
}
