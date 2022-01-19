import 'package:flutter/material.dart';
import 'package:appanimation/pages/animaciones_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AnimacionesPage(),
    );
  }
}
