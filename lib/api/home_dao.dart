import 'package:flutter_live/api/gank_http_manager.dart';
import 'package:flutter_live/api/http_manager.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_live/api/jh_http_manager.dart';
import 'package:flutter_live/api/request/essence_request.dart';
import 'package:flutter_live/api/request/news_request.dart';
import 'package:flutter_live/api/response/essence_response.dart';
import 'package:flutter_live/api/response/news_response.dart';
import 'package:flutter_live/api/response/welfare_response.dart';

class HomeDao {
  static final String newsKey = 'fef802d4070572bc6b8ed5b39ce72563';
  static final String essenceKdy = '1699ef2dbedfe5520513442d1c0c9ed8';

  static Future<NewsResponse> getNewsData(String type) async {
    NewsRequest request = NewsRequest(newsKey, type);
    Response response =
        await JHHttpManager.doGet("toutiao/index", request.toJson());
    NewsResponse newsResponse = NewsResponse.fromJson(response.data);
    return newsResponse;
  }

  static Future<EssenceResponse> getEssenceData(
      int pageSize, int pageNo) async {
    EssenceRequest request = EssenceRequest(essenceKdy);
    request.pageNo = pageNo;
    request.pageSize = pageSize;
    Response response =
        await JHHttpManager.doGet('weixin/query', request.toJson());
    EssenceResponse essenceResponse = EssenceResponse.fromJson(response.data);
    return essenceResponse;
  }

  static Future<WelfareResponse> getWelfareData() async {
    Response response=await GankHttpManager.doGet('福利/10/1', null);
    WelfareResponse welfareResponse = WelfareResponse.fromJson(response.data);
    return welfareResponse;
  }
}
