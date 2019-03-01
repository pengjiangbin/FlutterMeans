import 'package:flutter/material.dart';
import 'package:flutter_live/page/container_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xffd81e06)),
      home: ContainerPage(),
    );
  }
}
