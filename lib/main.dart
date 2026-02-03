import 'package:flutter/material.dart';
import 'package:payment_app/Features/checkout/data/services/get_it_service.dart';
import 'package:payment_app/Features/checkout/data/services/stripe_service.dart';
import 'package:payment_app/core/routing/app_router.dart';
import 'package:payment_app/core/routing/routes.dart';

import 'Features/checkout/presentation/views/my_cart_view.dart';

void main() async {
  await setupGetIt();
  await StripeService.init();
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: Routes.myCartView,
    );
  }
}
