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
            alignment: Alignment(-0.75, -0.5),
            child: Lamp(
              size: 45,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment(-0.10, -0.7),
            child: Lamp(
              size: 45,
              color: Colors.white,
            ),
          ),
          Container(
            alignment: Alignment(0, -0.4),
            child: Text('Login',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              )
            )
          )
        ],
      ),
    );
  }
}

