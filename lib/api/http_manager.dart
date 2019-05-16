import 'package:dio/dio.dart';

class HttpManager {
  static Map<String, dynamic> dios;

  static Dio get(String baseUrl) {
    if (dios == null) {
      dios = Map();
    }
    if (!dios.containsKey(baseUrl)) {
      Dio dio = new Dio();
      dio.options.baseUrl = baseUrl;
      dio.options.connectTimeout = 5000;
      dio.options.receiveTimeout = 5000;
      dios[baseUrl] = dio;
    }
    return dios[baseUrl];
  }
}
