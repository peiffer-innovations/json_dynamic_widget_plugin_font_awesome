import 'package:json_theme/json_theme_schemas.dart';

class FaIconSchema {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/json_dynamic_widget_plugin_font_awesome/fa_icon.json';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    r'$children': 0,
    r'$comment':
        'https://pub.dev/documentation/font_awesome_flutter/latest/font_awesome_flutter/FaIcon-class.html',
    'type': 'object',
    'title': 'FaIcon',
    'additionalProperties': false,
    'required': [
      'icon',
    ],
    'properties': {
      'color': SchemaHelper.objectSchema(ColorSchema.id),
      'icon': SchemaHelper.objectSchema(IconDataSchema.id),
      'semanticLabel': SchemaHelper.stringSchema,
      'size': SchemaHelper.numberSchema,
      'textDirection': SchemaHelper.objectSchema(TextDirectionSchema.id),
    },
  };
}
