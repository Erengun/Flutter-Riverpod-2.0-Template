import 'dart:async';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../constants/endpoints.dart';
import '../../utils/cachefor_extension.dart';

part 'network_repository.g.dart';

/// A repository class that extends _$NetworkRepository to handle network-related operations.
/// This class serves as an abstraction layer for managing network requests and responses,
/// providing a clean interface for the rest of the application to interact with network data.
@riverpod
class NetworkRepository extends _$NetworkRepository {
  late final Dio dio;

  @override
  Dio build() {
    dio = Dio(BaseOptions(baseUrl: Endpoints.baseUrl));
    // Accept: application/json"
    dio.options.headers['Accept'] = 'application/json';

    // Content-Type: application/json
    dio.options.headers['Content-Type'] = 'application/json';

    // set api key
    dio.options.headers['x-api-key'] = Endpoints.apiKey;


    /// Add Logger for debugging
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    return dio;
  }

  set baseUrl(String baseUrl) {
    dio.options.baseUrl = baseUrl;
  }

  void setApiKey(String apiKey) {
    dio.options.headers['x-api-key'] = apiKey;
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
