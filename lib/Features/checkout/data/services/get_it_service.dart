import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:payment_app/Features/checkout/data/repos/checkout_repo.dart';
import 'package:payment_app/Features/checkout/data/repos/checkout_repo_imp.dart';
import 'package:payment_app/Features/checkout/data/services/api_service.dart';
import 'package:payment_app/Features/checkout/data/services/stripe_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // ApiService
  getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));

  // StripeService
  getIt.registerLazySingleton<StripeService>(
    () => StripeService(apiService: getIt()),
  );

  // CheckoutRepo
  getIt.registerLazySingleton<CheckoutRepo>(
    () => CheckoutRepoImp(stripeService: getIt()),
  );
}
