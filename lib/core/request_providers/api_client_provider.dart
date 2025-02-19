import 'package:aurora/core/api_url_configrations.dart';
import 'package:aurora/core/client/api_client.dart';
import 'package:aurora/core/client/api_config.dart';
import 'package:aurora/core/interceptor/request_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client_provider.g.dart';

@riverpod
ApiClient apiClient(Ref ref) {
  final dio = Dio();
  dio.interceptors.add(RequestInterceptor());
  final provider = ref.read(appProvider);
  //dio.options.headers = {'Accept': '*/*'};
  return ApiClient(dio, baseUrl: provider.baseUrl);
}

final appProvider = Provider<ApiConfig>(
  (ref) => ApiConfig(DevBaseUrl.baseUrlDev),
);
