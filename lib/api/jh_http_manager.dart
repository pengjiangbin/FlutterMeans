import 'package:flutter_live/api/http_manager.dart';
//聚合数据网络管理
class JHHttpManager{

  static final String baseUrl = 'http://v.juhe.cn/';

  static doPost(String path, Map<String, dynamic> params) async {
    return await HttpManager.get(baseUrl).post(path, data: params);
  }

  static doGet(String path, Map<String, dynamic> params) async {
    return await HttpManager.get(baseUrl).get(path, queryParameters: params);
  }
}