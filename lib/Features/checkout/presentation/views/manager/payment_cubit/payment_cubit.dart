import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/payment_intent_input_model.dart';
import 'package:payment_app/Features/checkout/data/repos/checkout_repo.dart';
import '../../../../../../core/errors/failure.dart';
part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final CheckoutRepo checkoutRepo;

  PaymentCubit({required this.checkoutRepo}) : super(PaymentInitialState());
  Future<void> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    emit(PaymentLoadingState());

    Either<Failure, void> response = await checkoutRepo.makePayment(
      paymentIntentInputModel: paymentIntentInputModel,
    );

    return response.fold(
      (failure) => emit(PaymentFailureState(message: failure.errMesssage)),
      (success) => emit(PaymentSuccessState()),
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
