import 'package:flutter/material.dart';

class DrawCircle extends CustomPainter {
  Paint _paint;
  var offset_X, offset_Y;
  double radius;

  DrawCircle(color, offsetX, offsetY, radius_value) {
    _paint = Paint()
      ..color = color
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
      offset_X = offsetX;
      offset_Y = offsetY;
      radius = radius_value;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(offset_X, offset_Y), radius, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}