import 'package:flutter/material.dart';

class HeaderSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xffCD60DA),
    );
  }
}

class HeaderBorderRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70),
          ),
          color: Color(0xffCD60DA),
        ));
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //propiedades del lapiz
    paint.color = Color(0xffCD60DA);
    paint.style = PaintingStyle.fill; //fill despues
    paint.strokeWidth = 20;

    final path = new Path();

    //dibujar con el path y paint
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    //canvas dibujae el path
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    //throw UnimplementedError();
  }
}

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

//header pico
class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //propiedades del lapiz
    paint.color = Color(0xffCD60DA);
    paint.style = PaintingStyle.fill; //fill despues
    paint.strokeWidth = 20;

    final path = new Path();

    //dibujar con el path y paint
    path.lineTo(0, size.height * 0.2);
    path.lineTo(size.width * 0.5, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.2);
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

//Header Curvo
class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //propiedades del lapiz
    paint.color = Color(0xffCD60DA);
    paint.style = PaintingStyle.fill; //fill despues
    paint.strokeWidth = 20;

    final path = new Path();

    //dibujar con el path y paint
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.4, size.width, size.height * 0.25);
    //los dos primeros coordenadas es el eje por donde pasa la curvatura
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    //throw UnimplementedError();
  }
}

//Header weave
class HeaderWeave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWeavePainter(),
      ),
    );
  }
}

class _HeaderWeavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //propiedades del lapiz
    paint.color = Color(0xffCD60DA);
    paint.style = PaintingStyle.fill; //fill despues
    paint.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    //throw UnimplementedError();
  }
}

//Header weave bottom
class HeaderWeaveBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    final paint = new Paint();

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

//Header Wave Gradient
class HeaderWavePainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavePainterPainter(),
      ),
    );
  }
}

class _HeaderWavePainterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        new Rect.fromCircle(
          center: Offset(165.0, 85.0), 
          radius: 180);
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
