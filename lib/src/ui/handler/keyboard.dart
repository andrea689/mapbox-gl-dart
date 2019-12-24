@JS('mapboxgl')
library mapboxgl.ui.handler.keyboard;

import 'package:js/js.dart';

@JS()
@anonymous
abstract class KeyboardHandler {
  ///  Returns a Boolean indicating whether keyboard interaction is enabled.
  ///
  ///  @returns {boolean} `true` if keyboard interaction is enabled.
  external bool isEnabled();

  ///  Enables keyboard interaction.
  ///
  ///  @example
  ///  map.keyboard.enable();
  external bool enable();

  ///  Disables keyboard interaction.
  ///
  ///  @example
  ///  map.keyboard.disable();
  external bool disable();
}
