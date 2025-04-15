import 'package:dio/dio.dart';

class BadRequestException extends DioException {
  BadRequestException(RequestOptions requestOptions) : super(requestOptions: requestOptions);

  @override
  String toString() {
    return 'Invalid request! - Method: ${requestOptions.method} - Path: ${requestOptions.path}';
  }
}

class CancelException extends DioException {
  CancelException(RequestOptions requestOptions) : super(requestOptions: requestOptions);

  @override
  String toString() {
    return 'Cancelled! - Method: ${requestOptions.method} - Path: ${requestOptions.path}';
  }
}

class ConflictException extends DioException {
  ConflictException(RequestOptions requestOptions) : super(requestOptions: requestOptions);

  @override
  String toString() {
    return 'Conflict occurred! - Method: ${requestOptions.method} - Path: ${requestOptions.path}';
  }
}

class DeadLineExceededException extends DioException {
  DeadLineExceededException(RequestOptions requestOptions) : super(requestOptions: requestOptions);

  @override
  String toString() {
    return 'The connection has timed out, please try again. Method: ${requestOptions.method} - Path: ${requestOptions.path}';
  }
}

class InternalServerErrorException extends DioException {
  InternalServerErrorException(RequestOptions requestOptions) : super(requestOptions: requestOptions);

  @override
  String toString() {
    return 'Unknown error occurred, please try again later. Method: ${requestOptions.method} - Path: ${requestOptions.path}';
  }
}

class NotAllowedException extends DioException {
  NotAllowedException(RequestOptions requestOptions) : super(requestOptions: requestOptions);

  @override
  String toString() {
    return 'Not allowed! - Method: ${requestOptions.method} - Path: ${requestOptions.path}';
  }
}

class NotFoundException extends DioException {
  NotFoundException(RequestOptions requestOptions) : super(requestOptions: requestOptions);

  @override
  String toString() {
    return 'The requested information could not be found. Method: ${requestOptions.method} - Path: ${requestOptions.path}';
  }
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException(RequestOptions requestOptions) : super(requestOptions: requestOptions);

  @override
  String toString() {
    return 'No internet connection detected, please try again. Method: ${requestOptions.method} - Path: ${requestOptions.path}';
  }
}

class UnauthorizedException extends DioException {
  UnauthorizedException(RequestOptions requestOptions) : super(requestOptions: requestOptions);

  @override
  String toString() {
    return 'Access denied! - Method: ${requestOptions.method} - Path: ${requestOptions.path}';
  }
}
