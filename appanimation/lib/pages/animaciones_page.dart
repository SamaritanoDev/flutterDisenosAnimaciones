import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimacionesPage extends StatelessWidget {
  const AnimacionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  const CuadradoAnimado({
    Key? key,
  }) : super(key: key);

  @override
  State<CuadradoAnimado> createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotacion;
  //instanciar
  @override
  void initState() {
    //vsync el cuadrarp tenga su resolucion adecuado, usa el mixin
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 4000));

    rotacion = Tween(begin: 0.0, end: 2 * math.pi).animate(
        CurvedAnimation(
          parent: controller, 
          curve: Curves.easeOutBack)
        );
    super.initState();

    //escuchando los eventos
    controller.addListener(() {
      print('status: ${controller.status}');
      if (controller.status == AnimationStatus.completed) {
        //controller.reverse();
        controller.reset();
      }
    });
  }

  @override
  void dispose() {
    //limpieza
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //play- reproduccion
    controller.forward();
    //controller.repeat();

    return AnimatedBuilder(
      animation: controller,
      //child: _Rectangulo(),
      builder: (context, child) {
        return Transform.rotate(
            angle: rotacion.value, child: const _Rectangulo());
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
  const _Rectangulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}
