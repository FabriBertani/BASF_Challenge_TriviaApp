import 'package:basf_challenge_trivia_app/core/api/api_client.dart';
import 'package:basf_challenge_trivia_app/core/api/dio_interceptors.dart';
import 'package:basf_challenge_trivia_app/core/constants/url_constants.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService {
  late ApiClient apiClient;

  ApiService() {
    Dio dio = Dio();

    dio.options.headers['Content-Type'] = 'application/json';

    dio.options = BaseOptions(
      baseUrl: UrlConstants.baseUrl,
      receiveTimeout: Duration(seconds: 15),
      connectTimeout: Duration(seconds: 15),
      sendTimeout: Duration(seconds: 15),
    );

    dio.interceptors.add(DioInterceptors());

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
      ),
    );

    apiClient = ApiClient(dio);
  }
}
