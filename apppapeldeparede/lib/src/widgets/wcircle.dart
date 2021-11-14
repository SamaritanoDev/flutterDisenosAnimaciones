import 'package:flutter/material.dart';

class WCircle extends StatelessWidget {
  const WCircle({Key? key, this.size, this.color}) : super(key: key);
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: size ?? 70,
        height: size ?? 70,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [color ?? Colors.transparent, Colors.white],
                stops: [0.75, 0.75])
        )
    );
  }
}
