@JS('mapboxgl')
library mapboxgl.style.layers.layout;

import 'package:js/js.dart';

class Layout {
  @JS('icon-image')
  external set iconImage(String text);

  @JS('icon-allow-overlap')
  external set iconAllowOverlap(bool text);

  Layout({
    String iconImage,
    bool iconAllowOverlap,
  }) {
    this.iconImage = iconImage;
    this.iconAllowOverlap = iconAllowOverlap;
  }
}
