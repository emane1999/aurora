import 'dart:ui';
import 'package:aurora/theme/all_color.dart';

import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 =
        Paint()
          ..color = CIRCLECOLOR
          ..style = PaintingStyle.fill;
    canvas.rotate(48 * 3.14159 / 180);
    Paint paint2 =
        Paint()
          ..color = CIRCLECOLORs
          ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(2.3 * size.width / 2, size.height / 2),
      size.width / 2,
      paint1,
    );

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2,
      paint2,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
