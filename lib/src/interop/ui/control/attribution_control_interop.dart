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

/// An 'AttributionControl' control presents the map's attribution information.
/// Add this control to a map using Map#addControl.
///
/// @param {Object} [options]
/// @param {Boolean} [options.compass] If true , force a compact attribution that shows the full attribution on mouse hover.
/// If false , force the full attribution control. The default is a responsive attribution that collapses when the map
/// is less than 640 pixels wide. Attribution should not be collapsed if it can comfortably fit on the map. compact
/// should only be used to modify default attribution when map size makes it impossible to fit default attribution and
/// when the automatic compact resizing for default settings are not sufficient.
/// @param {Array<string>} [options.customAttribution] String or strings to show in addition to any other attributions.
/// You can also set a custom attribution when initializing your map with the customAttribution option .
/// @example
/// const map = new mapboxgl.Map({attributionControl: false})
///     .addControl(new mapboxgl.AttributionControl({
///         customAttribution: 'Map design by me'
/// }));
/// @see [AttributionControl](https://docs.mapbox.com/mapbox-gl-js/api/markers/#attributioncontrol)
/// @see [Change the default position for attribution](https://docs.mapbox.com/mapbox-gl-js/example/attribution-position)
@JS('AttributionControl')
class AttributionControlJsImpl {
  external AttributionControlOptionsJsImpl get options;

  external factory AttributionControlJsImpl(
      AttributionControlOptionsJsImpl options);

  external onAdd(MapboxMapJsImpl map);

  external onRemove();
}
