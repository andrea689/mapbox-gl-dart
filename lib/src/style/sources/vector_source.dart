library mapboxgl.style.sources.vector_source;

import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

class VectorSource extends Source<VectorSourceJsImpl> {
  static const type = 'vector';
  String? get url => jsObject.url;
  List<String>? get tiles => jsObject.tiles;

  factory VectorSource({
    String? url,
    List<String>? tiles,
  }) {
    if (url != null && tiles != null) {
      throw Exception('Specify only one between url and tiles');
    }
    if (url != null) {
      return VectorSource.fromJsObject(VectorSourceJsImpl(
        type: 'vector',
        url: url,
      ));
    }
    return VectorSource.fromJsObject(VectorSourceJsImpl(
      type: type,
      tiles: tiles,
    ));
  }

  /// Creates a new VectorSource from a [jsObject].
  VectorSource.fromJsObject(VectorSourceJsImpl jsObject)
      : super.fromJsObject(jsObject);

  @override
  get dict {
    Map<String, dynamic> dict = {
      'type': type,
    };
    if (url != null) {
      dict['url'] = url;
    }
    if (tiles != null) {
      dict['tiles'] = tiles;
    }
    return dict;
  }
}
