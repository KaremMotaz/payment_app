import 'package:dartz/dartz.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/payment_intent_input_model.dart';
import 'package:payment_app/core/errors/failure.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  });
}
