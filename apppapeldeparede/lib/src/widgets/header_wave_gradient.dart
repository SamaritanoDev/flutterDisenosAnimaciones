import 'package:flutter/material.dart';

//Header Wave Gradient
class HeaderWaveGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        new Rect.fromCircle(center: Offset(165.0, 150.0), radius: 180);
    final Gradient gradiente = new LinearGradient(
        //begin: Alignment.topCenter,
        //end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xff75cce8),
          Color(0xffa5dee5),
          Color(0xfff7db70)
        ]);
    final paint = new Paint()..shader = gradiente.createShader(rect);

    //propiedades del lapiz
    paint.color = Color(0xffCD60DA);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = new Path();

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
