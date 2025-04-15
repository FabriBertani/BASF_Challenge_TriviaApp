import 'package:basf_challenge_trivia_app/core/exceptions/api_exceptions.dart';
import 'package:dio/dio.dart';

class DioInterceptors extends Interceptor {
  /// This method is used to perform operations in the request
  /// before sending it to the server.
  ///
  /// For example: Setting the Header, adding Token, etc.
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
  }

  /// This method is used to perform operations on the response
  /// received from the server before sending it to the client.
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw DeadLineExceededException(err.requestOptions);
      case DioExceptionType.badCertificate:
        break;
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 401:
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 405:
            throw NotAllowedException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        throw NoInternetConnectionException(err.requestOptions);
    }
  }
}
