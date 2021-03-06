import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_live/page/essence_page.dart';
import 'package:flutter_live/page/home_page.dart';
import 'package:flutter_live/page/map_page.dart';
import 'package:flutter_live/page/welfare_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ContainerPage extends StatefulWidget {
  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  int currentMillis = 0;
  final titles = ['新闻', '精选', '发现'];
  int _tabIndex = 0;
  var _body;
  List<Widget> pages;
  var tabImages;

  @override
  void initState() {
    super.initState();
    pages = [HomePage(), EssencePage(), MapPage()];
    if (tabImages == null) {
      tabImages = [
        [
          _buildTabImage('images/ic_nav_news_normal.png'),
          _buildTabImage('images/ic_nav_news_actived.png')
        ],
        [
          _buildTabImage('images/ic_nav_essence_normal.png'),
          _buildTabImage('images/ic_nav_essence_actived.png')
        ],
        [
          _buildTabImage('images/ic_nav_find_normal.png'),
          _buildTabImage('images/ic_nav_find_actived.png')
        ]
      ];
    }
  }

  getTabIcon(int currentIndex) {
    if (_tabIndex == currentIndex) {
      return tabImages[currentIndex][1];
    }
    return tabImages[currentIndex][0];
  }

  getTabTitle(int currentIndex) {
    if (_tabIndex == currentIndex) {
      return Text(titles[currentIndex],
          style: TextStyle(color: const Color(0xffd81e06)));
    }
    return Text(titles[currentIndex],
        style: TextStyle(color: const Color(0xff8a8a8a)));
  }

  _buildTabImage(path) {
    return Image.asset(path, width: 25.0, height: 25.0);
  }

  _buildNavigationItem(Image icon, Text text) {
    return new BottomNavigationBarItem(icon: icon, title: text);
  }

  @override
  Widget build(BuildContext context) {
    _body = IndexedStack(
      children: pages,
      index: _tabIndex,
    );
    return WillPopScope(
      onWillPop: () {
        if (DateTime.now().millisecondsSinceEpoch - currentMillis > 2000) {
          currentMillis = DateTime.now().millisecondsSinceEpoch;
          Fluttertoast.showToast(
              msg: '再按一次退出应用', toastLength: Toast.LENGTH_SHORT);
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: Scaffold(
        body: _body,
        bottomNavigationBar: CupertinoTabBar(
            items: [
              _buildNavigationItem(getTabIcon(0), getTabTitle(0)),
              _buildNavigationItem(getTabIcon(1), getTabTitle(1)),
              _buildNavigationItem(getTabIcon(2), getTabTitle(2))
            ],
            currentIndex: _tabIndex,
            onTap: (index) {
              setState(() {
                _tabIndex = index;
              });
            }),
      ),
    );
  }
}
