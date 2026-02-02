import 'package:dartz/dartz.dart';
import 'package:payment_app/Features/checkout/data/services/stripe_payment_manager.dart';
import '../models/stripe/payment_intent_input_model.dart';
import '../models/stripe/payment_intent_model/payment_intent_model.dart';

class PaymentRepo {
  final StripePaymentManager stripePaymentManager;
  PaymentRepo({required this.stripePaymentManager});

  Future<Either<String, PaymentIntentModel>> createPaymentIntent({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    try {
      PaymentIntentModel response = await stripePaymentManager
          .createPaymentIntent(
            paymentIntentInputModel: paymentIntentInputModel,
          );
      // PaymentIntentModel paymentIntentModel = PaymentIntentModel.fromJson(
      //   response.data,
      // );
      return Right(response);
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}
