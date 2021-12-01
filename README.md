# json_dynamic_widget_plugin_font_awesome

## Table of Contents

* [Live Example](#live-example)
* [Introduction](#introduction)
* [Using the Plugin](#using-the-plugin)


## Live Example

* [Web](https://peiffer-innovations.github.io/json_dynamic_widget_plugin_font_awesome/web/index.html#/)


## Introduction

Plugin to the [JSON Dynamic Widget](https://peiffer-innovations.github.io/json_dynamic_widget) to provide Font Awesome support utilizing the [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter) package.


## Using the Plugin

```dart
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:json_dynamic_widget_plugin_font_awesome/json_dynamic_widget_plugin_font_awesome.dart';


void main() {
  // Ensure Flutter's binding is complete
  WidgetsFlutterBinding.ensureInitialized();

  // ...

  // Get an instance of the registry
  var registry = JsonWidgetRegistry.instance;

  // Bind the plugin to the registry.  This is necessary for the registry to
  // find the widget provided by the plugin
  JsonFontAwesomePlugin.bind(registry);

  // ...
}

```