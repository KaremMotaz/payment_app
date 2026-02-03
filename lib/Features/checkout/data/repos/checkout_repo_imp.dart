import 'package:dartz/dartz.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/create_customer_input_model.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/stripe_customer_model/stripe_customer_model.dart';
import 'package:payment_app/Features/checkout/data/repos/checkout_repo.dart';
import 'package:payment_app/Features/checkout/data/services/stripe_service.dart';
import 'package:payment_app/core/errors/failure.dart';
import 'package:payment_app/core/networking/api_error_handler.dart';
import '../models/stripe/payment_intent_input_model.dart';

class CheckoutRepoImp extends CheckoutRepo {
  final StripeService stripeService;
  CheckoutRepoImp({required this.stripeService});

  @override
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    try {
      await stripeService.makePayment(
        paymentIntentInputModel: paymentIntentInputModel,
      );
      return right(null);
    } catch (e) {
      return left(ApiErrorHandler.handle(error: e));
    }
  }

  @override
  Future<Either<Failure, StripeCustomerModel>> createCustomer({
    required CreateCustomerInputModel createCustomerInputModel,
  }) async {
    try {
      final StripeCustomerModel response = await stripeService.createCustomer(
        createCustomerInputModel: createCustomerInputModel,
      );
      return right(response);
    } catch (e) {
      return left(ApiErrorHandler.handle(error: e));
    }
  }
}
