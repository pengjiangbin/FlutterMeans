import 'package:flutter_live/api/http_manager.dart';

class GankHttpManager {
  static final String baseUrl = 'http://gank.io/api/data/';

  static doPost(String path, Map<String, dynamic> params) async {
    return await HttpManager.get(baseUrl).post(path, data: params);
  }

  static doGet(String path, Map<String, dynamic> params) async {
    return await HttpManager.get(baseUrl).get(path, queryParameters: params);
  }
}
