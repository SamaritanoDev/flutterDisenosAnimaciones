import 'package:flutter/material.dart';

//header triangular
class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //propiedades del lapiz
    paint.color = Color(0xffCD60DA);
    paint.style = PaintingStyle.fill; //fill despues
    paint.strokeWidth = 20;

    final path = new Path();

    //dibujar con el path y paint
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    //canvas dibujae el path
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    //throw UnimplementedError();
  }
}
