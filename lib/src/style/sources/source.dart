library mapboxgl.style.sources.source;

abstract class Source {
  Map<String, dynamic> toDict();
  dynamic toJs();
}
