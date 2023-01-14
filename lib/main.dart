import 'package:flutter/material.dart';
import 'package:native_demo/facebook_ui/facebook_ui.dart';
import 'widgets/column.dart';
import 'widgets/container.dart';
import 'widgets/my_icons.dart';
import 'widgets/custom_font.dart';
import 'widgets/list-view.dart';
import 'widgets/row.dart';
import 'widgets/safe_area.dart';
import 'widgets/scaffold.dart';
import 'widgets/single_child_scroll_view.dart';
import 'widgets/stack.dart';
import 'widgets/text.dart';
import 'package:device_preview/device_preview.dart';
import 'widgets/my_images.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(DevicePreview(
    builder: (_) => const MyApp(),
    // aqui puedo elegir si estara habilitado o no device preview en produccion 
    // podriamos usar true o false pero la negacion de kReleaseMode hara ese trabajo
    enabled: !kReleaseMode,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: const FacebookUi(),
    );
  }
}
