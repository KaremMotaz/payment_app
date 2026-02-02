import '../../../../core/utils/api_keys.dart';
import '../models/stripe/payment_intent_input_model.dart';
import '../models/stripe/payment_intent_model/payment_intent_model.dart';
import '../services/stripe_service.dart';

class PaymentRepo {
  final StripeService stripeService;
  PaymentRepo({required this.stripeService});

  Future<PaymentIntentModel> createPaymentIntent({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) {
    return stripeService.createPaymentIntent(
      authorizationHeader: "Bearer ${ApiKeys.secretKey}",
      contentType: "application/x-www-form-urlencoded",
      amount: paymentIntentInputModel.amount,
      currency: paymentIntentInputModel.currency,
    );
  }
}
