import 'package:payment_app/Features/checkout/data/models/stripe/payment_intent_input_model.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/payment_intent_model/payment_intent_model.dart';
import 'package:payment_app/Features/checkout/data/services/stripe_api_service.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../../../core/utils/api_keys.dart';

class StripePaymentManager {
  final StripeApiService stripeApiService;

  StripePaymentManager({required this.stripeApiService});

  Future<PaymentIntentModel> createPaymentIntent({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) {
    return stripeApiService.createPaymentIntent(
      authorizationHeader: "Bearer ${ApiKeys.secretKey}",
      contentType: "application/x-www-form-urlencoded",
      amount: paymentIntentInputModel.amount,
      currency: paymentIntentInputModel.currency,
    );
  }

  Future<void> initPaymentSheet({
    required String paymentIntentClientSecret,
  }) async {
    Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Karim',
      ),
    );
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }
}
