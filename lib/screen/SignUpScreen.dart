import 'package:flutter/material.dart';
import 'package:all_map/widget/DrawCircle.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            
          ),
        ),
      ),
    );
  }
}