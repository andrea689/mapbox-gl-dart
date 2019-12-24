@JS('mapboxgl')
library mapboxgl.util.evented;

import 'package:js/js.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

typedef Listener = dynamic Function(dynamic object);

@JS()
@anonymous
class Event {
  String type;

  external factory Event({String type, dynamic data});
}

@JS()
abstract class Evented {
  ///  Adds a listener to a specified event type.
  ///
  ///  @param {string} type The event type to add a listen for.
  ///  @param {Function} listener The function to be called when the event is fired.
  ///    The listener function is called with the data object passed to `fire`,
  ///    extended with `target` and `type` properties.
  ///  @returns {Object} `this`
  //external on(String type, Listener listener);
  external MapboxMap on(String type,
      [dynamic layerIdOrListener, Listener listener]);

  ///  Removes a previously registered event listener.
  ///
  ///  @param {string} type The event type to remove listeners for.
  ///  @param {Function} listener The listener function to remove.
  ///  @returns {Object} `this`
  //external off(String type, Listener listener);
  external MapboxMap off(String type,
      [dynamic layerIdOrListener, Listener listener]);

  ///  Adds a listener that will be called only once to a specified event type.
  ///
  ///  The listener will be called first time the event fires after the listener is registered.
  ///
  ///  @param {string} type The event type to listen for.
  ///  @param {Function} listener The function to be called when the event is fired the first time.
  ///  @returns {Object} `this`
  external once(String type, Listener listener);

  external fire(Event event, [dynamic properties]);

  ///  Returns a true if this instance of Evented or any forwardeed instances of Evented have a listener for the specified type.
  ///
  ///  @param {string} type The event type
  ///  @returns {boolean} `true` if there is at least one registered listener for specified event type, `false` otherwise
  ///  @private
  external listens(String type);

  ///  Bubble all events fired by this instance of Evented to this parent instance of Evented.
  ///
  ///  @private
  ///  @returns {Object} `this`
  ///  @private
  external setEventedParent([Evented parent, dynamic data]);
}
