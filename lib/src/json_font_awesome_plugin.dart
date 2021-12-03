import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_dynamic_widget_plugin_font_awesome/json_dynamic_widget_plugin_font_awesome.dart';
import 'package:json_theme/json_theme_schemas.dart';

class JsonFontAwesomePlugin {
  static void bind(JsonWidgetRegistry registry) {
    var schemaCache = SchemaCache();
    schemaCache.addSchema(
      FaIconSchema.id,
      FaIconSchema.schema,
    );

    registry.registerCustomBuilder(
      JsonFaIconBuilder.type,
      JsonWidgetBuilderContainer(
        builder: JsonFaIconBuilder.fromDynamic,
        schemaId: FaIconSchema.id,
      ),
    );

    registry.setValue('icons', faIconNameMapping.keys);
  }
}
