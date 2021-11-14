import 'package:apppapeldeparede/src/widgets/lamp.dart';
import 'package:flutter/material.dart';
import 'package:apppapeldeparede/src/widgets/headers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Login(),
          Align(
            alignment: Alignment(0.5, -0.75),
            child: Lamp(
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment(0, -0.7),
            child: Lamp(
              size: 45,
              color: Colors.white30,
            ),
          )
        ],
      ),
    );
  }
}

