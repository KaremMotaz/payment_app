import 'package:dio/dio.dart';
import '../models/stripe/payment_intent_model/payment_intent_model.dart';
import '../../../../core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
part 'stripe_service.g.dart';

@RestApi(baseUrl: ApiConstants.stripeBaseUrl)
abstract class StripeService {
  factory StripeService(Dio dio) = _StripeService;

  @POST(ApiConstants.createPaymentIntent)
  @FormUrlEncoded()
  Future<PaymentIntentModel> createPaymentIntent({
    @Header("Authorization") required String authorizationHeader,
    @Header("Content-Type") required String contentType,
    @Field("amount") required String amount,
    @Field("currency") required String currency,
  });
}
