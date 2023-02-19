import 'package:flutter/material.dart';
import 'package:wallpaper/src/pages/header_page.dart';

void main() {
  runApp(const MyApp());
}

/// The MyApp class is a StatelessWidget that returns a MaterialApp widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Headers',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HeadersPage(),
    );
  }
}
