import 'dart:html';

import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

Marker marker;
HtmlElement coordinates;

void main() {
  Mapbox.accessToken =
      'pk.eyJ1IjoiYW5kcmVhNjg5IiwiYSI6ImNrNGlsYjhyZDBuYXoza213aWphOGNjZmoifQ.maw_5NsXejG1DoOeOi6hlQ';

  coordinates = querySelector('#coordinates');
  var map = MapboxMap(
    MapOptions(
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v11',
      center: LngLat(0, 0),
      zoom: 2,
    ),
  );

  marker = Marker(
    MarkerOptions(
      draggable: true,
    ),
  ).setLngLat(LngLat(0, 0)).addTo(map);

  marker.on('dragend', onDragEnd);
}

void onDragEnd(_) {
  var lngLat = marker.getLngLat();
  coordinates.style.display = 'block';
  coordinates.innerHtml =
      'Longitude: ${lngLat.lng}<br />Latitude: ${lngLat.lat}';
}
