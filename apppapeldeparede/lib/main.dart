import 'package:apppapeldeparede/src/pages/header_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Headers',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HeadersPage(),
    );
  }
}
