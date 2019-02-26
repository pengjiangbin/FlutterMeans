import 'package:flutter/material.dart';
import "package:flutter_live/page/home_page/home_page.dart";
import 'package:flutter_live/page/demand_page/demand_page.dart';
import 'package:flutter_live/page/news_page/news_page.dart';
import 'package:flutter_live/page/user_page/user_page.dart';

class NavigationView extends StatefulWidget {
  @override
  _NavigationViewState createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  List<Widget> pages = List<Widget>();
  int _curIndex = 0;

  @override
  void initState() {
    pages..add(HomePage())..add(DemandPage())..add(NewsPage())..add(UserPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        items: [
          _buildNavigationItem(Icons.home, "Home", context),
          _buildNavigationItem(Icons.email, "A", context),
          _buildNavigationItem(Icons.pages, "B", context),
          _buildNavigationItem(Icons.account_circle, "C", context)
        ],
        currentIndex: _curIndex,
        onTap: ((index) {
          setState(() {
            _curIndex = index;
          });
        }),
      ),
      body: pages[_curIndex],
    );
  }

  _buildNavigationItem(IconData icon, String text, BuildContext context) {
    return new BottomNavigationBarItem(
      backgroundColor: Colors.red,
        title: new Text(text),
        icon: new Icon(icon));
  }
}
