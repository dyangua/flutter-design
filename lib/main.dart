import 'package:desing/pages/home.dart';
import 'package:desing/pages/scroll.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desing',
      initialRoute: 'scroll',
      routes: {
        '': (BuildContext context) => HomePage(),
        'scroll': (BuildContext context) => ScrollPage()
      },
    );
  }
}
