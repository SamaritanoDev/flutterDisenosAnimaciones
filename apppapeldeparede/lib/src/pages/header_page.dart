import 'package:flutter/material.dart';
import 'package:apppapeldeparede/src/widgets/headers.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HeaderTriangular(),
    );
  }
}
