import 'package:flutter/material.dart';
import 'package:apppapeldeparede/src/widgets/headers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Center(
              child: Text(
            "Hello World",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w400,
              color: Color(0xff75CCE8),
            ),
          )),
          Login()
        ],
      )),
    );
  }
}