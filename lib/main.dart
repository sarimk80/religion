import 'package:flutter/material.dart';
import 'package:religion/src/MyHomePage.dart';
import 'package:religion/src/widgets/Setting.dart';
import 'package:religion/src/widgets/christans/Christianity.dart';
import 'package:religion/src/widgets/muslims/Islam.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: "/",
      routes: {
        '/': (context) => MyHomePage(
              title: "Religion",
            ),
        '/Christianity': (context) => Christianity(),
        '/Islam': (context) => Islam(),
        '/Setting': (context) => Setting()
      },
    );
  }
}
