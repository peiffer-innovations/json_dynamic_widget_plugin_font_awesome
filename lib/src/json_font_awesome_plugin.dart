import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_dynamic_widget_plugin_font_awesome/json_dynamic_widget_plugin_font_awesome.dart';
import 'package:json_theme/json_theme_schemas.dart';

class JsonFontAwesomePlugin {
  static void bind(JsonWidgetRegistry registry) {
    final schemaCache = SchemaCache();
    schemaCache.addSchema(
      FaIconSchema.id,
      FaIconSchema.schema,
    );

    registry.registerCustomBuilder(
      JsonFaIconBuilder.kType,
      const JsonWidgetBuilderContainer(
        builder: JsonFaIconBuilder.fromDynamic,
        schemaId: FaIconSchema.id,
      ),
    );
  }
}
