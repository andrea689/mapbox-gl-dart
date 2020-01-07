library mapboxgl.style.layers.layout;

class Layout {
  String iconImage;
  bool iconAllowOverlap;

  Layout({
    this.iconImage,
    this.iconAllowOverlap,
  });

  dynamic toDict() {
    return {
      'icon-image': iconImage,
      'icon-allow-overlap': iconAllowOverlap,
    };
  }
}
