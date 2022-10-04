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

  /// Creates a new NavigationControlOptions from a [jsObject].
  AttributionControlOptions.fromJsObject(AttributionControlOptionsJsImpl jsObject) : super.fromJsObject(jsObject);
}

/// An 'AttributionControl' control presents the map's attribution information.
///
/// https://docs.mapbox.com/mapbox-gl-js/api/markers/#attributioncontrol
class AttributionControl extends JsObjectWrapper<AttributionControlJsImpl> {
  AttributionControlOptions get options => AttributionControlOptions.fromJsObject(jsObject.options);

  factory AttributionControl(AttributionControlOptions options) =>
      AttributionControl.fromJsObject(AttributionControlJsImpl(options.jsObject));

  onAdd(MapboxMap map) => jsObject.onAdd(map.jsObject);

  onRemove() => jsObject.onRemove();

  /// Creates a new MapOptions from a [jsObject].
  AttributionControl.fromJsObject(AttributionControlJsImpl jsObject) : super.fromJsObject(jsObject);
}
