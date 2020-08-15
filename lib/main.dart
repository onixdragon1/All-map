import 'package:all_map/screen/LoginScreen.dart';
import 'package:all_map/screen/MainMapScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All map',
      home: MainMapScreen(),
    );
  }
}

