import 'package:flutter/material.dart';
import 'package:wallpaper/src/widgets/widgets.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Center(
              child: Text(
            "Hello World",
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 8, 11, 12),
            ),
          )),
          HeaderWaveGradient()
        ],
      ),
    );
  }
}
