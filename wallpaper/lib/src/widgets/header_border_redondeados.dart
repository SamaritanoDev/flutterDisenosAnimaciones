import 'package:flutter/material.dart';

import '../const.dart';

/// A class that returns a container with a height of 200, a border radius of 70, and a color of
/// 0xffCD60DA
class HeaderBorderRedondeados extends StatelessWidget {
  const HeaderBorderRedondeados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70),
          ),
          color: ColorsMyApp.primarycolor,
        ));
  }
}
