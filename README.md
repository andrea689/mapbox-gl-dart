# Mapbox-gl wrapper for Dart

## Using this package

You must include [Mapbox GL JS](https://github.com/mapbox/mapbox-gl-js) into your `.html` file
to be able to use this package.

```html
<script src='https://api.tiles.mapbox.com/mapbox-gl-js/v1.5.0/mapbox-gl.js'></script>
<link href='https://api.tiles.mapbox.com/mapbox-gl-js/v1.5.0/mapbox-gl.css' rel='stylesheet'/>
```

In the body add a container for the map.

```html
<body>
    <div id='map'></div>
</body>
```

In the dart file initialize the map.

```dart
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart' as mapboxgl;

void main() {
  Mapbox.accessToken = 'YOUR_TOKEN_HERE';

  var map = MapboxMap(
    MapOptions(
      container: 'map',
      style: 'mapbox://styles/mapbox/dark-v10',
      center: LngLat(7.68227, 45.06755),
      zoom: 12,
    ),
  );
}
```

## Examples

You can find many examples in the [example](example) folder.

## Run example

`webdev serve example:8081`

Open browser to `localhost:8081`
