part of 'payment_cubit.dart';

@immutable
sealed class PaymentState {}

final class PaymentInitialState extends PaymentState {}

final class PaymentLoadingState extends PaymentState {}

final class PaymentSuccessState extends PaymentState {}

final class PaymentFailureState extends PaymentState {
  final String message;
  PaymentFailureState({required this.message});
}
