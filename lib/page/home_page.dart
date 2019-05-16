import 'package:flutter/material.dart';
import 'package:flutter_live/page/news_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final _titles = ['头条', '社会', '国内', '国际', '娱乐', '体育', '军事', '科技', '财经', '时尚'];
  final _titleTypes = [
    'top',
    'shehui',
    'guonei',
    'guoji',
    'yule',
    'tiyu',
    'junshi',
    'keji',
    'caijing',
    'shishang'
  ];

  List<Widget> tabs = [];
  List<Widget> pages = [];

  ScrollController _scrollController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _tabController = TabController(length: _titles.length, vsync: this);
    for (int i = 0; i < _titleTypes.length; i++) {
      tabs.add(Tab(
          child: Text(
        _titles[i],
        style: TextStyle(color: Colors.white),
      )));
      pages.add(NewsPage(type: _titleTypes[i]));
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        bottom: TabBar(
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            controller: _tabController, tabs: tabs, isScrollable: true),
      ), preferredSize: Size.fromHeight(50.0)),
      body: TabBarView(controller: _tabController, children: pages),
    );
  }


}
