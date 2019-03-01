import 'package:flutter_live/api/http_manager.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_live/api/request/news_request.dart';
import 'package:flutter_live/api/response/news_response.dart';

class HomeDao {
  static final String key = 'fef802d4070572bc6b8ed5b39ce72563';

  static Future<NewsResponse> getHomeData(String type) async {
    NewsRequest request = NewsRequest(key, type);
    Response response = await HttpManager.doGet("toutiao/index", request.toJson());
    NewsResponse newsResponse = NewsResponse.fromJson(response.data);
    return newsResponse;
  }
}
