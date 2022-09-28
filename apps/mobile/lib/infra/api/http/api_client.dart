import 'package:dio/dio.dart';

class ApiClient {
  static Dio createApi() {
    var options = BaseOptions(
      baseUrl: 'https://api.itourism.app/',
    );

    var dio = Dio(options);

    return dio;
  }
}
