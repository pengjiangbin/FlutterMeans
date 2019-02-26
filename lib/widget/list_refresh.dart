import 'package:flutter/material.dart';
import 'dart:convert';

class ListRefresh extends StatefulWidget {
  final requestApi;
  final renderItem;
  final headerView;

  const ListRefresh(
      {Key key, this.requestApi, this.renderItem, this.headerView})
      : super(key: key);

  @override
  _ListRefreshState createState() => _ListRefreshState();
}

class _ListRefreshState extends State<ListRefresh> {
  bool _isLoading = false;
  bool _hasMore = true;
  int _pageIndex = 0;
  int _pageTotal = 0;
  List items = List();
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  Future _getMoreData() async {
    if (!_isLoading && _hasMore) {
      if (mounted) {
        setState(() {
          _isLoading = true;
        });
      }
      List newData = await requestData();
      _hasMore = (_pageIndex <= _pageTotal);
      if (mounted) {
        setState(() {
          items.addAll(newData);
          _isLoading = false;
        });
      }
      backElasticEffect();
    } else if (!_isLoading && !_hasMore) {
      _pageIndex = 0;
      backElasticEffect();
    }
  }

  //回弹
  backElasticEffect() {}

  Future<List> requestData() async {
    if (widget.requestApi is Function) {
      final list = await widget.requestApi({'pageIndex': _pageIndex});
      _pageIndex = list["pageIndex"];
      _pageTotal = list["pageTotal"];
      return list["list"];
    } else {
      return Future.delayed(Duration(seconds: 2), () {
        return [];
      });
    }
  }

  //下拉
  Future<Null> _handleRefresh() async {
    List newData = await requestData();
    if (mounted) {
      setState(() {
        items.clear();
        items.addAll(newData);
        _isLoading = false;
        _hasMore = true;
        return null;
      });
    }
  }

  _buildLoadText() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text("没有更多数据了"),
        ),
      ),
    );
  }

  _buildProgressIndicator() {
    if (_hasMore) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Opacity(
                opacity: _isLoading ? 1.0 : 0.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.red[400]),
                ),
              ),
              Text("正在努力加载", style: TextStyle(fontSize: 14.0))
            ],
          ),
        ),
      );
    } else {
      return _buildLoadText();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: ListView.builder(
          itemCount: items.length + 1,
          itemBuilder: (context, index) {
            if (index == 0 && index != items.length) {
              if (widget.headerView is Function) {
                return widget.headerView();
              } else {
                return Container(height: 0);
              }
            }
            if (index == items.length) {
              return _buildProgressIndicator();
            } else {
              if (widget.renderItem is Function) {
                return widget.renderItem(index, items[index]);
              }
            }
          },
          controller: _scrollController,
        ),
        onRefresh: _handleRefresh);
  }
}
