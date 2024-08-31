import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:movies_getx/util/constant.dart';

class NetworkApi {
  late final Dio _dio;

  NetworkApi() {
    _dio = Dio(BaseOptions(
      baseUrl: Constant.baseUrl,
      responseType: ResponseType.json,
      headers: {
        "Content-Type": "application/json",
        "Authorization":
        "Bearer ${Constant.appKey}",
      }
    ));
    _dio.interceptors.add(ChuckerDioInterceptor());
  }

  Future<T> post<T>(String path, {Map<String, dynamic> params = const {}}) async {
    var response = await _dio.get(path, data: params);
    return response.data;
  }

  Future<T> get<T>(String path, Map<String, dynamic> params) async {
    var response = await _dio.get(path, queryParameters: params);
    return response.data;
  }
}
