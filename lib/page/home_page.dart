import 'package:flutter/material.dart';
import 'package:flutter_live/page/news_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _titles = ['头条', '社会', '国内', '国际', '娱乐', '体育', '军事', '科技', '财经', '时尚'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsPage(),
    );
  }
}
