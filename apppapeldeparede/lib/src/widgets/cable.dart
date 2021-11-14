import 'package:flutter/material.dart';

class Cable extends StatelessWidget {
  const Cable({Key? key, this.height}) : super(key: key);
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height??100,
      width: 10,
      color: Colors.white,
    );
  }
}
