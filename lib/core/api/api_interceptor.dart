import 'package:dio/dio.dart';
import 'package:project_fundfinder/cache/cache_helper.dart';
import 'package:project_fundfinder/core/api/end_Points.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept-Language'] = 'ar';
    options.headers['Authorization'] = CacheHelper().getData(key: ApiKey.token);

    super.onRequest(options, handler);
  }
}