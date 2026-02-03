import 'package:payment_app/core/errors/failure.dart';

class ApiErrorModel extends Failure {
  ApiErrorModel({required super.errMesssage});

  factory ApiErrorModel.fromJson({required Map<String, dynamic> json}) {
    final error = json['error'];

    return ApiErrorModel(
      errMesssage: error is Map<String, dynamic>
          ? (error['message']?.toString() ?? 'An error occurred')
          : (json['message']?.toString() ?? 'An error occurred'),
    );
  }
}
