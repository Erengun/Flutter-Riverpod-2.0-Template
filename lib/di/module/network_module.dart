// ignore_for_file: always_specify_types

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:network_logger/network_logger.dart';

import '../../constants/endpoints.dart';
import '../../data/getstore/get_store_helper.dart';

/// NetworkModule is used to register network related dependencies.
/// @module is used to register the module.
/// @preResolve is used to make sure that the Future is resolved before the app starts.
/// @lazySingleton is used to make sure that the dependency is created only once.
/// @injectable is used to make sure that the dependency is created only once.
@module
abstract class NetworkModule {
  @preResolve
  Future<Dio> provideDio(GetStoreHelper getStoreHelper) {
    final Dio dio = Dio();

    dio
      ..options.baseUrl = Endpoints.baseUrl
      ..options.connectTimeout =
          const Duration(milliseconds: Endpoints.connectionTimeout)
      ..options.receiveTimeout =
          const Duration(milliseconds: Endpoints.receiveTimeout)
      ..options.headers = {
        'Content-Type': 'application/json',
        'accept': 'text/plain',
      }
      ..interceptors.add(LogInterceptor(
        request: false,
        responseBody: true,
        requestHeader: false,
      ))
      ..interceptors.add(DioNetworkLogger())
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options,
              RequestInterceptorHandler handler) async {
            return handler.next(options);
          },
        ),
      );

    return Future.value(dio);
  }

  /// Register RestClients here to be used in the app.
  /// It is recommended to use @preResolve annotation to make sure that the
  /// Future is resolved before the app starts.

  @preResolve
  Future<GetStorage> provideGetStorage() {
    return Future.value(GetStorage());
  }
}
