import 'package:flutter/material.dart';
import 'package:knightowl/pages/home_page.dart';

class App extends StatefulWidget {
  const App({required Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(key: UniqueKey()),
    );
  }
}
