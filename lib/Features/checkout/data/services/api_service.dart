import 'package:dio/dio.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/create_ephemeral_key_model/create_ephemeral_key_model.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/stripe_customer_model/stripe_customer_model.dart';
import '../models/stripe/payment_intent_model/payment_intent_model.dart';
import '../../../../core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.stripeBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  // Stripe
  @POST(ApiConstants.createPaymentIntent)
  @FormUrlEncoded()
  Future<PaymentIntentModel> createPaymentIntent({
    @Header("Authorization") required String authorizationHeader,
    @Header("Content-Type") required String contentType,
    @Field("amount") required String amount,
    @Field("currency") required String currency,
    @Field("customer") required String customerId,
  });

  @POST(ApiConstants.createCustomer)
  @FormUrlEncoded()
  Future<StripeCustomerModel> createCustomer({
    @Header("Authorization") required String authorizationHeader,
    @Header("Content-Type") required String contentType,
    @Field("name") required String name,
    @Field("email") required String email,
  });

  @POST(ApiConstants.createEphemeralKey)
  @FormUrlEncoded()
  Future<CreateEphemeralKeyModel> createEphemeralKey({
    @Header("Authorization") required String authorizationHeader,
    @Header("Content-Type") required String contentType,
    @Header("Stripe-Version") required String stripeVersion,
    @Field("customer") required String customerId,
  });
}
