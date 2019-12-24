import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

void main() {
  Mapbox.accessToken =
      'pk.eyJ1IjoiYW5kcmVhNjg5IiwiYSI6ImNrNGlsYjhyZDBuYXoza213aWphOGNjZmoifQ.maw_5NsXejG1DoOeOi6hlQ';

  MapboxMap(
    MapOptions(
      container: 'map',
      style: 'mapbox://styles/mapbox/dark-v10',
      center: LngLat(7.68227, 45.06755),
      zoom: 12,
    ),
  );
}
