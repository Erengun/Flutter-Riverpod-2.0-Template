import 'dart:async';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../constants/endpoints.dart';
import '../../utils/cachefor_extension.dart';

part 'api_repository.g.dart';

@riverpod
class ApiController extends _$ApiController {
  late final Dio dio;

  @override
  Dio build() {
    dio = Dio(BaseOptions(baseUrl: Endpoints.baseUrl));
    // Accept: application/json"
    dio.options.headers['Accept'] = 'application/json';

    /// Add Logger for debugging
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    return dio;
  }

  set baseUrl(String baseUrl) {
    dio.options.baseUrl = baseUrl;
  }

  void setToken(String token) {
    dio.options.headers['Authorization'] = 'Bearer $token';

    /// Cache the token for 1 day
    ref.cacheFor(const Duration(days: 1));
  }

  String get baseUrl => dio.options.baseUrl;

  Future<Response<T>> get<T>(String path,
      {Map<String, dynamic>? queryParameters, String? baseUrl}) async {
    if (baseUrl != null) {
      dio.options.baseUrl = baseUrl;
    }
    return dio.get(path, queryParameters: queryParameters);
  }

  Future<Response<T>> post<T>(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      String? baseUrl}) async {
    if (baseUrl != null) {
      dio.options.baseUrl = baseUrl;
    }
    return dio.post(path, data: data, queryParameters: queryParameters);
  }
}
