import 'package:dio/dio.dart';

class HttpManager{

  static Dio _dio;

  static final String _baseUrl='http://v.juhe.cn/';

  static doPost (String path,Map<String,dynamic> params) async{
    return await get().post(path,data:params);
  }

  static doGet(String path,Map<String,dynamic> params) async{
    return await get().get(path,queryParameters:params);
  }

  static Dio get(){
    if(_dio==null){
      _dio=new Dio();
      _dio.options.baseUrl=_baseUrl;
      _dio.options.connectTimeout=5000;
      _dio.options.receiveTimeout=5000;
    }
    return _dio;
  }
}