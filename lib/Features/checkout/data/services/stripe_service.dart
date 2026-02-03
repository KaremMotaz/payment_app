import 'package:payment_app/Features/checkout/data/models/stripe/payment_intent_input_model.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/payment_intent_model/payment_intent_model.dart';
import 'package:payment_app/Features/checkout/data/services/api_service.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../../../core/utils/api_keys.dart';

class StripeService {
  final ApiService apiService;

  StripeService({required this.apiService});

  static Future<void> init() async {
    Stripe.publishableKey = ApiKeys.publishableKey;
  }

  Future<PaymentIntentModel> createPaymentIntent({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) {
    return apiService.createPaymentIntent(
      authorizationHeader: "Bearer ${ApiKeys.secretKey}",
      contentType: "application/x-www-form-urlencoded",
      amount: "${paymentIntentInputModel.amount}00",
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

  Future<void> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    PaymentIntentModel paymentIntentModel = await createPaymentIntent(
      paymentIntentInputModel: paymentIntentInputModel,
    );
    await initPaymentSheet(
      paymentIntentClientSecret: paymentIntentModel.clientSecret,
    );
    await displayPaymentSheet();
  }
}
