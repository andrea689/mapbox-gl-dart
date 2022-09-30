library mapboxgl.ui.control.attribution_control;

import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';
import 'package:mapbox_gl_dart/src/interop/interop.dart';

class AttributionControlOptions extends JsObjectWrapper<AttributionControlOptionsJsImpl> {
  bool get compact => jsObject.compact;

  List<String> get customAttribution => jsObject.customAttribution;

  factory AttributionControlOptions({
    bool? compact,
    List<String>? customAttribution,
  }) =>
      AttributionControlOptions.fromJsObject(AttributionControlOptionsJsImpl(
        compact: compact,
        customAttribution: customAttribution,
      ));

  AttributionControlOptions.fromJsObject(AttributionControlOptionsJsImpl jsObject) : super.fromJsObject(jsObject);
}

class AttributionControl extends JsObjectWrapper<AttributionControlJsImpl> {
  AttributionControlOptions get options => AttributionControlOptions.fromJsObject(jsObject.options);

  factory AttributionControl(AttributionControlOptions options) =>
      AttributionControl.fromJsObject(AttributionControlJsImpl(options.jsObject));

  onAdd(MapboxMap map) => jsObject.onAdd(map.jsObject);

  onRemove() => jsObject.onRemove();

  AttributionControl.fromJsObject(AttributionControlJsImpl jsObject) : super.fromJsObject(jsObject);
}
