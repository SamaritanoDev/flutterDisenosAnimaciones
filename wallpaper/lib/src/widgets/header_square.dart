import 'package:flutter/material.dart';
import '../const.dart';

/// A `StatelessWidget` that returns a `Container` with a height of 300 and a color of
/// `Color(0xffCD60DA)`
class HeaderSquare extends StatelessWidget {
  const HeaderSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: ColorsMyApp.tertiarycolor,
    );
  }
}
