import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:trapir/database/database.dart';
import 'package:trapir/screens/home.dart';

import 'package:provider/provider.dart';
import 'package:trapir/configs/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (lightColorScheme, darkColorScheme) {
      return Provider(
        create: (_) => Database(),
        child: MaterialApp(
          title: 'TRAPIR',
          home: const Home(),
          theme: TrapirTheme.lightTheme(lightColorScheme),
          darkTheme: TrapirTheme.darkTheme(darkColorScheme),
        ),
        dispose: (_, Database database) => database.close(),
      );
    });
  }
}
