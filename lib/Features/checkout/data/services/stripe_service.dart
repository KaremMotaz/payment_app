import 'package:payment_app/Features/checkout/data/models/stripe/create_customer_input_model.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/create_ephemeral_key_model/create_ephemeral_key_model.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/init_payment_sheet_model.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/payment_intent_input_model.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/payment_intent_model/payment_intent_model.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/stripe_customer_model/stripe_customer_model.dart';
import 'package:payment_app/Features/checkout/data/services/api_service.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../../../core/utils/api_keys.dart';

class StripeService {
  final ApiService apiService;

  StripeService({required this.apiService});

  static Future<void> init() async {
    Stripe.publishableKey = ApiKeys.stripePublishableKey;
  }

  Future<PaymentIntentModel> createPaymentIntent({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) {
    return apiService.createPaymentIntent(
      authorizationHeader: "Bearer ${ApiKeys.stripeSecretKey}",
      contentType: "application/x-www-form-urlencoded",
      amount: "${paymentIntentInputModel.amount}00",
      currency: paymentIntentInputModel.currency,
      customerId: paymentIntentInputModel.customerId ?? "",
    );
  }

  Future<StripeCustomerModel> createCustomer({
    required CreateCustomerInputModel createCustomerInputModel,
  }) {
    return apiService.createCustomer(
      authorizationHeader: "Bearer ${ApiKeys.stripeSecretKey}",
      contentType: "application/x-www-form-urlencoded",
      name: createCustomerInputModel.name,
      email: createCustomerInputModel.email,
    );
  }

  Future<CreateEphemeralKeyModel> createEphemeralKey({
    required String customerId,
  }) {
    return apiService.createEphemeralKey(
      authorizationHeader: "Bearer ${ApiKeys.stripeSecretKey}",
      contentType: "application/x-www-form-urlencoded",
      stripeVersion: "2026-01-28.clover",
      customerId: customerId,
    );
  }

  Future<void> initPaymentSheet({
    required InitPaymentSheetModel initPaymentSheetModel,
  }) async {
    Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret:
            initPaymentSheetModel.paymentIntentClientSecret,
        customerEphemeralKeySecret: initPaymentSheetModel.ephemeralKeySecret,
        customerId: initPaymentSheetModel.customerId,
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

    CreateEphemeralKeyModel createEphemeralKeyModel = await createEphemeralKey(
      customerId: paymentIntentInputModel.customerId!,
    );

    InitPaymentSheetModel initPaymentSheetModel = InitPaymentSheetModel(
      paymentIntentClientSecret: paymentIntentModel.clientSecret,
      ephemeralKeySecret: createEphemeralKeyModel.secret,
      customerId: paymentIntentInputModel.customerId!,
    );

    await initPaymentSheet(initPaymentSheetModel: initPaymentSheetModel);
    await displayPaymentSheet();
  }
}
