import 'package:dio/dio.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle({required dynamic error}) {
    if (error is DioException) {
      switch (error.type) {
      
        case DioExceptionType.connectionError:
          return ApiErrorModel(
            errMesssage:
                "Unable to connect to the server. Please check your internet connection and try again.",
          );
        case DioExceptionType.cancel:
          return ApiErrorModel(
            errMesssage: "The request was cancelled before completion.",
          );
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(
            errMesssage:
                "The connection to the server took too long. Please try again.",
          );
        case DioExceptionType.unknown:
          return ApiErrorModel(
            errMesssage:
                "Failed to reach the server. Please make sure you’re online.",
          );
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
            errMesssage:
                "The server took too long to respond. Please try again later.",
          );
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            errMesssage:
                "Sending data to the server took too long. Please try again.",
          );
        default:
          return ApiErrorModel(
            errMesssage: "An unexpected error occurred. Please try again.",
          );
      }
    } else {
      return ApiErrorModel(
        errMesssage: "An unexpected error occurred. Please try again.",
      );
    }
  }

  static ApiErrorModel _handleError(dynamic response) {
    return ApiErrorModel.fromJson(json: response ?? {});
  }
}
