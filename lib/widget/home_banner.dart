import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_live/model/banner.dart';

class HomeBanner extends StatefulWidget {
  final List<BannerModel> bannerList;
  final onTapBannerItem onTap;

  const HomeBanner({Key key, this.bannerList, this.onTap}) : super(key: key);

  @override
  _HomeBannerState createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  int _virtualIndex = 0;
  int _realIndex = 1;
  PageController _controller;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _realIndex);
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      _controller.animateToPage(_realIndex + 1,
          duration: Duration(milliseconds: 300), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageView(
              controller: _controller,
              onPageChanged: _onPageChange,
              children: _buildItems()),
          _buildIndicator()
        ],
      ),
    );
  }

  List<Widget> _buildItems() {
    List<Widget> items = [];
    if (widget.bannerList.length > 0) {
      items.add(_buildItem(widget.bannerList[widget.bannerList.length - 1]));
      items.addAll(widget.bannerList
          .map((banner) => _buildItem(banner))
          .toList(growable: false));
      items.add(_buildItem(widget.bannerList[0]));
    }
    return items;
  }

  Widget _buildItem(BannerModel banner) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(banner.image, fit: BoxFit.cover),
        ],
      ),
    );
  }

  Widget _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < widget.bannerList.length; i++) {
      indicators.add(Container(
        width: 6.0,
        height: 6.0,
        margin: EdgeInsets.symmetric(horizontal: 1.5, vertical: 10.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: i == _virtualIndex ? Colors.white : Colors.grey),
      ));
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.center, children: indicators);
  }

  _onPageChange(int index) {
    _realIndex = index;
    int count = widget.bannerList.length;
    if (index == 0) {
      _virtualIndex = count - 1;
      _controller.jumpToPage(count);
    } else if (index == count + 1) {
      _virtualIndex = 0;
      _controller.jumpToPage(1);
    } else {
      _virtualIndex = index - 1;
    }
    setState(() {});
  }
}

typedef void onTapBannerItem(BannerModel banner);
