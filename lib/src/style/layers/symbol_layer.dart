library mapboxgl.style.layers.symbol_layer;

import 'package:js/js_util.dart';
import 'package:mapbox_gl_dart/mapbox_gl_dart.dart';

class SymbolLayer {
  String id;
  String type;
  String metadata;
  Source source;
  String sourceLayer;
  num minZoom;
  num maxZoom;
  dynamic filter;
  SymbolLayout layout;
  SymbolPaint paint;

  SymbolLayer({
    this.id,
    this.metadata,
    this.source,
    this.sourceLayer,
    this.minZoom,
    this.maxZoom,
    this.filter,
    this.layout,
    this.paint,
  }) {
    this.type = 'symbol';
  }

  dynamic toDict() {
    Map<String, dynamic> dict = {
      'id': id,
    };
    if (type != null) dict['type'] = type;
    if (metadata != null) dict['metadata'] = metadata;
    if (source != null) dict['source'] = source.toDict();
    if (sourceLayer != null) dict['source-layer'] = sourceLayer;
    if (minZoom != null) dict['minzoom'] = minZoom;
    if (maxZoom != null) dict['maxzoom'] = maxZoom;
    if (filter != null) dict['filter'] = filter;
    if (layout != null) dict['layout'] = layout.toDict();
    if (paint != null) dict['paint'] = paint.toDict();
    return dict;
  }

  dynamic toJs() {
    return jsify(toDict());
  }
}

class SymbolPaint {
  num iconOpacity;
  String iconColor;
  String iconHaloColor;
  num iconHaloWidth;
  num iconHaloBlur;
  List<num> iconTranslate;
  String iconTranslateAnchor;
  num textOpacity;
  String textColor;
  String textHaloColor;
  num textHaloWidth;
  num textHaloBlur;
  List<num> textTranslate;
  String textTranslateAnchor;

  SymbolPaint({
    this.iconOpacity,
    this.iconColor,
    this.iconHaloColor,
    this.iconHaloWidth,
    this.iconHaloBlur,
    this.iconTranslate,
    this.iconTranslateAnchor,
    this.textOpacity,
    this.textColor,
    this.textHaloColor,
    this.textHaloWidth,
    this.textHaloBlur,
    this.textTranslate,
    this.textTranslateAnchor,
  });

  dynamic toDict() {
    Map<String, dynamic> dict = {};
    if (iconOpacity != null) dict['icon-opacity'] = iconOpacity;
    if (iconColor != null) dict['icon-color'] = iconColor;
    if (iconHaloColor != null) dict['icon-halo-color'] = iconHaloColor;
    if (iconHaloWidth != null) dict['icon-halo-width'] = iconHaloWidth;
    if (iconHaloBlur != null) dict['icon-halo-blur'] = iconHaloBlur;
    if (iconTranslate != null) dict['icon-translate'] = iconTranslate;
    if (iconTranslateAnchor != null)
      dict['icon-translate-anchor'] = iconTranslateAnchor;
    if (textOpacity != null) dict['text-opacity'] = textOpacity;
    if (textColor != null) dict['text-color'] = textColor;
    if (textHaloColor != null) dict['text-halo-color'] = textHaloColor;
    if (textHaloWidth != null) dict['text-halo-width'] = textHaloWidth;
    if (textHaloBlur != null) dict['text-halo-blur'] = textHaloBlur;
    if (textTranslate != null) dict['text-translate'] = textTranslate;
    if (textTranslateAnchor != null)
      dict['text-translate-anchor'] = textTranslateAnchor;
    return dict;
  }
}

class SymbolLayout {
  bool symbolAvoidEdges;
  num symbolSortKey;
  String symbolZOrder;
  bool iconAllowOverlap;
  bool iconIgnorePlacement;
  bool iconOptional;
  String iconRotationAlignment;
  num iconSize;
  String iconTextFit;
  List<num> iconFitPadding;
  dynamic iconImage;
  num iconRotate;
  num iconPadding;
  bool iconKeepUpright;
  List<num> iconOffset;
  String iconAnchor;
  String iconPitchAlignment;
  String textPitchAlignment;
  String textRotationAlignment;
  String textField;
  List<String> textFont;
  num textSize;
  num textMaxWidth;
  num textLineHeight;
  num textLetterSpacing;
  String textJustify;
  num textRadialOffset;
  List<String> textVariableAnchor;
  String textAnchor;
  num textMaxAngle;
  List<String> textWritingMode;
  num textRotate;
  num textPadding;
  bool textKeepUpright;
  String textTransform;
  List<num> textOffset;
  bool textAllowOverlap;
  bool textIgnorePlacement;
  bool textOptional;
  String visibility;

  SymbolLayout({
    this.symbolAvoidEdges,
    this.symbolSortKey,
    this.symbolZOrder,
    this.iconAllowOverlap,
    this.iconIgnorePlacement,
    this.iconOptional,
    this.iconRotationAlignment,
    this.iconSize,
    this.iconTextFit,
    this.iconFitPadding,
    this.iconImage,
    this.iconRotate,
    this.iconPadding,
    this.iconKeepUpright,
    this.iconOffset,
    this.iconAnchor,
    this.iconPitchAlignment,
    this.textPitchAlignment,
    this.textRotationAlignment,
    this.textField,
    this.textFont,
    this.textSize,
    this.textMaxWidth,
    this.textLineHeight,
    this.textLetterSpacing,
    this.textJustify,
    this.textRadialOffset,
    this.textVariableAnchor,
    this.textAnchor,
    this.textMaxAngle,
    this.textWritingMode,
    this.textRotate,
    this.textPadding,
    this.textKeepUpright,
    this.textTransform,
    this.textOffset,
    this.textAllowOverlap,
    this.textIgnorePlacement,
    this.textOptional,
    this.visibility,
  });

  dynamic toDict() {
    Map<String, dynamic> dict = {};
    if (symbolAvoidEdges != null) dict['symbol-avoid-edges'] = symbolAvoidEdges;
    if (symbolSortKey != null) dict['symbol-sort-key'] = symbolSortKey;
    if (symbolZOrder != null) dict['symbol-z-order'] = symbolZOrder;
    if (iconAllowOverlap != null) dict['icon-allow-overlap'] = iconAllowOverlap;
    if (iconIgnorePlacement != null)
      dict['icon-ignore-placement'] = iconIgnorePlacement;
    if (iconOptional != null) dict['icon-optional'] = iconOptional;
    if (iconRotationAlignment != null)
      dict['icon-rotation-alignment'] = iconRotationAlignment;
    if (iconSize != null) dict['icon-size'] = iconSize;
    if (iconTextFit != null) dict['icon-text-fit'] = iconTextFit;
    if (iconFitPadding != null) dict['icon-fit-padding'] = iconFitPadding;
    if (iconImage != null) dict['icon-image'] = iconImage;
    if (iconRotate != null) dict['icon-rotate'] = iconRotate;
    if (iconPadding != null) dict['icon-padding'] = iconPadding;
    if (iconKeepUpright != null) dict['icon-keep-upright'] = iconKeepUpright;
    if (iconOffset != null) dict['icon-offset'] = iconOffset;
    if (iconAnchor != null) dict['icon-anchor'] = iconAnchor;
    if (iconPitchAlignment != null)
      dict['icon-pitch-alignment'] = iconPitchAlignment;
    if (textPitchAlignment != null)
      dict['text-pitch-alignment'] = textPitchAlignment;
    if (textRotationAlignment != null)
      dict['text-rotation-alignment'] = textRotationAlignment;
    if (textField != null) dict['text-field'] = textField;
    if (textFont != null) dict['text-font'] = textFont;
    if (textSize != null) dict['text-size'] = textSize;
    if (textMaxWidth != null) dict['text-max-width'] = textMaxWidth;
    if (textLineHeight != null) dict['text-line-height'] = textLineHeight;
    if (textLetterSpacing != null)
      dict['text-letter-spacing'] = textLetterSpacing;
    if (textJustify != null) dict['text-justify'] = textJustify;
    if (textRadialOffset != null) dict['text-radial-offset'] = textRadialOffset;
    if (textVariableAnchor != null)
      dict['text-variable-anchor'] = textVariableAnchor;
    if (textAnchor != null) dict['text-anchor'] = textAnchor;
    if (textMaxAngle != null) dict['text-max-angle'] = textMaxAngle;
    if (textWritingMode != null) dict['text-writing-mode'] = textWritingMode;
    if (textRotate != null) dict['text-rotate'] = textRotate;
    if (textPadding != null) dict['text-padding'] = textPadding;
    if (textKeepUpright != null) dict['text-keep-upright'] = textKeepUpright;
    if (textTransform != null) dict['text-transform'] = textTransform;
    if (textOffset != null) dict['text-offset'] = textOffset;
    if (textAllowOverlap != null) dict['text-allow-overlap'] = textAllowOverlap;
    if (textIgnorePlacement != null)
      dict['text-ignore-placement'] = textIgnorePlacement;
    if (textOptional != null) dict['text-optional'] = textOptional;
    if (visibility != null) dict['visibility'] = visibility;
    return dict;
  }
}
