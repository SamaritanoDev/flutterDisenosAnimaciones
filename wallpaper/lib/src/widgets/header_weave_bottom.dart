import 'package:flutter/material.dart';

import '../const.dart';

//Header weave bottom
class HeaderWeaveBottom extends StatelessWidget {
  const HeaderWeaveBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWeaveBottomPainter(),
      ),
    );
  }
}

class _HeaderWeaveBottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //propiedades del lapiz
    paint.color = ColorsMyApp.secondarycolor;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.85);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.95,
        size.width * 0.5, size.height * 0.85);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.75, size.width, size.height * 0.85);
    path.lineTo(0, size.height * 95);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    //throw UnimplementedError();
  }
}
