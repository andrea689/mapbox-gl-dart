import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

void main() {
  Mapbox.accessToken =
      'pk.eyJ1IjoiYW5kcmVhNjg5IiwiYSI6ImNrNGlsYjhyZDBuYXoza213aWphOGNjZmoifQ.maw_5NsXejG1DoOeOi6hlQ';

  var map = MapboxMap(
    MapOptions(
      container: 'map',
      style: 'mapbox://styles/mapbox/light-v10',
      zoom: 12,
      center: LngLat(-122.447303, 37.753574),
    ),
  );

  map.on('load', (_) {
    /* Sample feature from the `examples.8fgz4egr` tileset:
    {
      "type": "Feature",
      "properties": {
        "ethnicity": "White"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [ -122.447303, 37.753574 ]
      }
    }
    */
    var layer = CircleLayer(
      id: 'population',
      source: VectorSource(
        url: 'mapbox://examples.8fgz4egr',
      ),
      sourceLayer: 'sf2010',
      paint: CirclePaint(
        // make circles larger as the user zooms from z12 to z22
        circleRadius: {
          'base': 1.75,
          'stops': [
            [12, 2],
            [22, 180]
          ],
        },
        // color circles by ethnicity, using a match expression
        // https://docs.mapbox.com/mapbox-gl-js/style-spec/#expressions-match
        circleColor: [
          'match',
          ['get', 'ethnicity'],
          'White',
          '#fbb03b',
          'Black',
          '#223b53',
          'Hispanic',
          '#e55e5e',
          'Asian',
          '#3bb2d0',
          /* other */ '#ccc'
        ],
      ),
    );
    map.addLayer(layer);
  });
}
