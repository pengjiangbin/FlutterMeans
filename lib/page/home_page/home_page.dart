import 'package:flutter/material.dart';
import 'package:flutter_live/widget/pagination.dart';
import 'package:flutter_live/widget/list_refresh.dart';
import 'package:dio/dio.dart' as http;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _buildHeaderView(),
      ),
    );
  }

  _getHomeData(){

  }

  Widget _buildItem(){
    return Container();
  }

  _buildHeaderView(){
    return Pagination();
  }
}


