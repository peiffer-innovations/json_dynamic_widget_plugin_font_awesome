import 'package:child_builder/child_builder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
import 'package:json_class/json_class.dart';
import 'package:json_dynamic_widget/builders.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_theme/json_theme.dart';

/// Builder that can build an [Icon] widget.  See the [fromDynamic] for the
/// format.
class JsonFaIconBuilder extends JsonWidgetBuilder {
  JsonFaIconBuilder({
    this.color,
    required this.icon,
    this.semanticLabel,
    this.size,
    this.textDirection,
  }) : super(numSupportedChildren: kNumSupportedChildren);

  static const kNumSupportedChildren = 0;
  static const type = 'fa_icon';

  final Color? color;
  final IconData? icon;
  final String? semanticLabel;
  final double? size;
  final TextDirection? textDirection;

  /// Builds the builder from a Map-like dynamic structure.  This expects the
  /// JSON format to be of the following structure:
  ///
  /// ```json
  /// {
  ///   "color": <Color>,
  ///   "icon": <IconData>,
  ///   "semanticLabel": <String>,
  ///   "size": <double>,
  ///   "textDirection": <TextDirection>
  /// }
  /// ```
  ///
  /// See also:
  ///  * [ThemeDecoder.decodeColor]
  ///  * [ThemeDecoder.decodeIconData]
  ///  * [ThemeDecoder.decodeTextDirection]
  static JsonIconBuilder? fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) {
    JsonIconBuilder? result;

    if (map != null) {
      result = JsonIconBuilder(
        color: ThemeDecoder.decodeColor(
          map['color'],
          validate: false,
        ),
        icon: map['icon'] is String
            ? faIconNameMapping[map['icon']]
            : ThemeDecoder.decodeIconData(
                map['icon'],
                validate: false,
              ),
        semanticLabel: map['semanticLabel'],
        size: JsonClass.parseDouble(map['size']),
        textDirection: ThemeDecoder.decodeTextDirection(
          map['textDirection'],
          validate: false,
        ),
      );
    }

    return result;
  }

  @override
  Widget buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    return FaIcon(
      icon,
      color: color,
      key: key,
      semanticLabel: semanticLabel,
      size: size,
      textDirection: textDirection,
    );
  }
}
