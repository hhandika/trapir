import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:trapir/database/database.dart';
import 'package:trapir/screens/home.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final _defaultLightColorScheme =
      ColorScheme.fromSwatch(primarySwatch: Colors.green);

  static final _defaultDarkColorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.green,
    brightness: Brightness.dark,
  );

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (lightColorScheme, darkColorScheme) {
      return Provider(
        create: (_) => Database(),
        child: MaterialApp(
          title: 'TRAPIR',
          home: const Home(),
          theme: ThemeData(
            colorScheme: lightColorScheme ?? _defaultLightColorScheme,
            useMaterial3: true,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          darkTheme: ThemeData(
            colorScheme: darkColorScheme ?? _defaultDarkColorScheme,
            useMaterial3: true,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
        ),
        dispose: (_, Database database) => database.close(),
      );
    });
  }
}
