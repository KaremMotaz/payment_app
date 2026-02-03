import 'package:dartz/dartz.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/create_customer_input_model.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/payment_intent_input_model.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/stripe_customer_model/stripe_customer_model.dart';
import 'package:payment_app/core/errors/failure.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  });

  Future<Either<Failure, StripeCustomerModel>> createCustomer({
    required CreateCustomerInputModel createCustomerInputModel,
  });
}
