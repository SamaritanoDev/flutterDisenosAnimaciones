import 'package:apppapeldeparede/src/widgets/wcircle.dart';
import 'package:flutter/material.dart';

class Lamp extends StatelessWidget {
  const Lamp({ Key? key,this.size, this.color }) : super(key: key);
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -1),
            child: WCircle(
              size: 40,
              color: color,
            ),
          ),
          _MedioCircle(
              color: color,
              size: size,
          ),
        ],
      ),
    );
  }
}


class _MedioCircle extends StatelessWidget {
  const _MedioCircle({Key? key, this.size, this.color}) : super(key: key);

  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            color ?? Colors.white,
            Colors.transparent
          ],
          stops: [0.5,0.5]
        )
      ),
    );
  }
}
