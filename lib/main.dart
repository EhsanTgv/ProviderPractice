import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'about.dart';
import 'home.dart';
import 'model/ui.dart';
import 'settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UI()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/settings': (context) => Settings(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
