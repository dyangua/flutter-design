import 'package:desing/pages/grid.dart';
import 'package:desing/pages/home.dart';
import 'package:desing/pages/scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black87));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desing',
      initialRoute: 'grid',
      routes: {
        '': (BuildContext context) => HomePage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'grid': (BuildContext context) => GridPage()
      },
    );
  }
}
