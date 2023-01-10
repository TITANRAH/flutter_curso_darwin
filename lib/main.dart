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

import 'widgets/my_images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FacebookUi(),
    );
  }
}
