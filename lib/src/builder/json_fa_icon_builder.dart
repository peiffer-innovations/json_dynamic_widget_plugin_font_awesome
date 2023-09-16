import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

part 'json_fa_icon_builder.g.dart';

/// Builder that can build an [FaIcon] widget.
@jsonWidget
abstract class _JsonFaIconBuilder extends JsonWidgetBuilder {
  const _JsonFaIconBuilder({
    required super.args,
  });

  @JsonArgEncoder('icon')
  static dynamic _encodeIcon(IconData value) {
    dynamic result = value.codePoint;
    for (var icons in faIconNameMapping.entries) {
      if (icons.value.codePoint == value.codePoint) {
        result = icons.key;
        break;
      }
    }

    return result;
  }

  @JsonArgDecoder('icon')
  IconData _decodeIcon({required dynamic value}) {
    IconData result;

    if (value is IconData) {
      result = value;
    } else if (value is int) {
      result = IconData(value);
    } else if (value is String) {
      result = faIconNameMapping[value]!;
    } else {
      throw Exception('Unknown icon type encountered: [$value]');
    }

    return result;
  }

  @JsonPositionedParam('icon')
  @override
  FaIcon buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}
