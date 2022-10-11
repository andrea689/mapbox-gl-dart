import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

void main() {
  bool isPlaying = true;
  Mapbox.accessToken =
      'pk.eyJ1IjoiYW5kcmVhNjg5IiwiYSI6ImNrNGlsYjhyZDBuYXoza213aWphOGNjZmoifQ.maw_5NsXejG1DoOeOi6hlQ';

  var map = MapboxMap(
    MapOptions(
      container: 'map',
      style: 'mapbox://styles/mapbox/light-v10',
      zoom: 16,
      minZoom: 14,
      center: LngLat(-122.514426, 37.562984),
      bearing: -96,
    ),
  );

  map.on('load', (_) {
    map.addSource(
        'video',
        VideoSource(
          urls: [
            'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4'
          ],
          coordinates: [
            [-122.51596391201019, 37.56238816766053],
            [-122.51467645168304, 37.56410183312965],
            [-122.51309394836426, 37.563391708549425],
            [-122.51423120498657, 37.56161849366671]
          ],
        ));

    map.addLayer({'id': 'video', 'type': 'raster', 'source': 'video'});
  });
  map.on('click', (_) {
    final source = map.getSource('video') as VideoSource?;
    if (isPlaying) {
      source?.pause();
    } else {
      source?.play();
    }
    isPlaying = !isPlaying;
  });
}
