// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_font_awesome_plugin_registrar.dart';

// **************************************************************************
// Generator: JsonWidgetRegistrarBuilder
// **************************************************************************

class JsonFontAwesomePluginRegistrar extends _JsonFontAwesomePluginRegistrar {
  final Map<String, JsonWidgetBuilderContainer> _builders =
      <String, JsonWidgetBuilderContainer>{};

  final Map<String, Map<String, Object>> _schemas =
      <String, Map<String, Object>>{};

  static JsonFontAwesomePluginRegistrar registerDefaults(
      {JsonWidgetRegistry? registry}) {
    registry ??= JsonWidgetRegistry.instance;
    return JsonFontAwesomePluginRegistrar()
      ..withFaIcon()
      ..register(registry);
  }

  Map<String, Map<String, Object>> get schemas =>
      Map<String, Map<String, Object>>.from(_schemas);
  void register(JsonWidgetRegistry registry) {
    for (var b in _builders.entries) {
      registry.registerCustomBuilder(b.key, b.value);
    }

    final schemaCache = SchemaCache();
    for (var s in _schemas.entries) {
      schemaCache.addSchema(s.key, s.value);
    }
  }

  void withFaIcon() {
    _builders[JsonFaIconBuilder.kType] = const JsonWidgetBuilderContainer(
      builder: JsonFaIconBuilder.fromDynamic,
      schemaId: FaIconSchema.id,
    );
    _schemas[FaIconSchema.id] = FaIconSchema.schema;
  }
}
