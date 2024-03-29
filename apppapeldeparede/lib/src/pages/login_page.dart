import 'package:apppapeldeparede/src/widgets/lamp.dart';
import 'package:flutter/material.dart';
import '../widgets/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Login(),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 1000),
              builder: (context, double value, child) {
                return Align(
                  alignment: Alignment(-0.75, -1),
                  child: Opacity(
                    opacity: value,
                    child: Lamp(
                      size: 120,
                      color: Colors.white70,
                    ),
                  ),
                );
              }),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 1000),
              builder: (context, double value, child) {
                return Align(
                  alignment: Alignment(-0, -1),
                  child: Opacity(
                    opacity: value,
                    child: Lamp(
                      size: 100,
                      color: Colors.white38,
                    ),
                  ),
                );
              }),
          Container(
              alignment: Alignment(0, -0.4),
              child: Text('Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  )))
        ],
      ),
    );
  }
}
