import 'package:flutter/material.dart';
import 'package:payment_app/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:payment_app/Features/checkout/presentation/views/thank_you_view.dart';
import 'routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.myCartView:
        return MaterialPageRoute(builder: (context) => const MyCartView());

      case Routes.thankYouView:
        return MaterialPageRoute(builder: (context) => const ThankYouView());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
