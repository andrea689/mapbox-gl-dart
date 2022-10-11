import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

void main() {
  bool isPlaying = true;
  Mapbox.accessToken =
      'pk.eyJ1IjoiYW5kcmVhNjg5IiwiYSI6ImNrNGlsYjhyZDBuYXoza213aWphOGNjZmoifQ.maw_5NsXejG1DoOeOi6hlQ';

  var map = MapboxMap(
    MapOptions(
      container: 'map',
      style: 'mapbox://styles/mapbox/light-v10',
      zoom: 5,
      minZoom: 4,
      center: LngLat(95.8991, 18.0887),
    ),
  );

  map.on('load', (_) {
    map.addSource(
        'canvas-source',
        CanvasSource(
          canvas: "canvasID",
          coordinates: [
            [91.4461, 21.5006],
            [100.3541, 21.5006],
            [100.3541, 13.9706],
            [91.4461, 13.9706]
          ],
          animate: true,
        ));

    map.addLayer(
        {'id': 'canvas-layer', 'type': 'raster', 'source': 'canvas-source'});
  });
  map.on('click', (_) {
    final source = map.getSource('canvas-source') as CanvasSource?;
    if (isPlaying) {
      source?.pause();
    } else {
      source?.play();
    }
    isPlaying = !isPlaying;
  });
}
