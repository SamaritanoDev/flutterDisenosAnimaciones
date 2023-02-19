import 'package:flutter/material.dart';
import '../const.dart';

//Header Wave Gradient
class HeaderWaveGradientTop extends StatelessWidget {
  const HeaderWaveGradientTop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWaveGradientTopPainter(),
      ),
    );
  }
}

class _HeaderWaveGradientTopPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(165.0, 150.0), radius: 180);
    const Gradient gradiente = LinearGradient(
        //begin: Alignment.topCenter,
        //end: Alignment.bottomCenter,
        colors: <Color>[
          ColorsMyApp.primarycolor,
          ColorsMyApp.secondarycolor,
          ColorsMyApp.tertiarycolor
        ]);
    final paint = Paint()..shader = gradiente.createShader(rect);

    //propiedades del lapiz
    paint.color = ColorsMyApp.tertiarycolor;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    path.lineTo(0, size.height * 0.15);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.25,
        size.width * 0.5, size.height * 0.15);
    path.quadraticBezierTo(
        size.width * 0.72, size.height * 0.08, size.width, size.height * 0.15);
    path.lineTo(size.width, 0);

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
