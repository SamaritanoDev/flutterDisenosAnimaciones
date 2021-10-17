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
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70),
          ),
          color: Color(0xffCD60DA),
        ));
  }
}
