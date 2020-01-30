library mapboxgl.style.layers.line_layer;

import 'package:js/js_util.dart';
import 'package:meta/meta.dart';

class LineLayer {
  String type;
  String id;
  String source;
  String sourceLayer;
  LinePaint paint;
  LineLayout layout;
  dynamic filter;

  LineLayer({
    @required this.id,
    this.source,
    this.sourceLayer,
    this.paint,
    this.layout,
    this.filter,
  }) {
    type = 'line';
  }

  dynamic toDict() {
    Map<String, dynamic> dict = {
      'id': id,
    };
    if (type != null) dict['type'] = type;
    if (source != null) dict['source'] = source;
    if (sourceLayer != null) dict['source-layer'] = sourceLayer;
    if (paint != null) dict['paint'] = paint.toDict();
    if (layout != null) dict['layout'] = layout.toDict();
    if (filter != null) dict['filter'] = filter;
    return dict;
  }

  dynamic toJs() {
    return jsify(toDict());
  }
}

class LinePaint {
  num lineOpacity;
  dynamic lineColor;
  List<num> lineTranslate;
  String lineTranslateAnchor;
  dynamic lineWidth;
  num lineGapWidth;
  num lineOffset;
  num lineBlur;
  List<num> lineDasharray;
  String linePattern;
  String lineGradient;

  LinePaint({
    this.lineOpacity,
    this.lineColor,
    this.lineTranslate,
    this.lineTranslateAnchor,
    this.lineWidth,
    this.lineGapWidth,
    this.lineOffset,
    this.lineBlur,
    this.lineDasharray,
    this.linePattern,
    this.lineGradient,
  });

  dynamic toDict() {
    Map<String, dynamic> dict = {};
    if (lineOpacity != null) dict['line-opacity'] = lineOpacity;
    if (lineColor != null) dict['line-color'] = lineColor;
    if (lineTranslate != null) dict['line-translate'] = lineTranslate;
    if (lineTranslateAnchor != null)
      dict['line-translate-anchor'] = lineTranslateAnchor;
    if (lineWidth != null) dict['line-width'] = lineWidth;
    if (lineGapWidth != null) dict['line-gap-width'] = lineGapWidth;
    if (lineOffset != null) dict['line-offset'] = lineOffset;
    if (lineBlur != null) dict['line-blur'] = lineBlur;
    if (lineDasharray != null) dict['line-dasharray'] = lineDasharray;
    if (linePattern != null) dict['line-pattern'] = linePattern;
    if (lineGradient != null) dict['line-gradient'] = lineGradient;
    return dict;
  }
}

class LineLayout {
  String lineCap;
  String lineJoin;
  num lineMiterLimit;
  num lineRoundLimit;
  num lineSortKey;
  String visibility;

  LineLayout({
    this.lineCap,
    this.lineJoin,
    this.lineMiterLimit,
    this.lineRoundLimit,
    this.lineSortKey,
    this.visibility,
  });

  dynamic toDict() {
    Map<String, dynamic> dict = {};
    if (lineCap != null) dict['line-cap'] = lineCap;
    if (lineJoin != null) dict['line-join'] = lineJoin;
    if (lineMiterLimit != null) dict['line-miter-limit'] = lineMiterLimit;
    if (lineRoundLimit != null) dict['line-round-limit'] = lineRoundLimit;
    if (lineSortKey != null) dict['line-sort-key'] = lineSortKey;
    if (visibility != null) dict['visibility'] = visibility;
    return dict;
  }
}
