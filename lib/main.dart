import 'package:flutter/material.dart';
import 'package:flutter_live/page/home_page/container_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContainerPage(),
    );
  }
}

