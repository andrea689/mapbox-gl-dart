@JS('mapboxgl')
library mapboxgl.interop.ui.control.attribution_control;

import 'package:js/js.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

@JS()
@anonymous
class AttributionControlOptionsJsImpl {
  external bool get compact;
  external List<String> get customAttribution;

  external factory AttributionControlOptionsJsImpl({
    bool? compact,
    List<String>? customAttribution,
  });
}

@JS('AttributionControl')
class AttributionControlJsImpl {
  external AttributionControlOptionsJsImpl get options;

  external factory AttributionControlJsImpl(
      AttributionControlOptionsJsImpl options);

  external onAdd(MapboxMapJsImpl map);

  external onRemove();
}
