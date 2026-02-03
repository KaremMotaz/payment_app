import 'package:flutter/material.dart';
import 'package:payment_app/Features/checkout/data/services/stripe_service.dart';

import 'Features/checkout/presentation/views/my_cart_view.dart';

void main() async {
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
    );
  }
}
