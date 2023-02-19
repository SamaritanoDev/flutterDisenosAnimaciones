import 'package:flutter/material.dart';

/// A class that returns a container with a height of 200, a border radius of 70, and a color of
/// 0xffCD60DA
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
