import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_app/Features/checkout/presentation/views/manager/payment_cubit/payment_cubit.dart';
import 'package:payment_app/core/extensions/context_extensions.dart';
import 'package:payment_app/core/functions/error_dialog.dart';
import 'package:payment_app/core/routing/routes.dart';
import 'package:payment_app/core/widgets/custom_button.dart';

import '../../../../../core/utils/api_keys.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  final String amount;
  const CustomButtonBlocConsumer({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccessState) {
          context.pushAndRemoveUntil(Routes.thankYouView);
        } else if (state is PaymentFailureState) {
          context.pop();
          errorDialog(context: context, message: state.message);
        }
      },
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state is PaymentLoadingState,
          child: CustomButton(
            onTap: () {
              // context.read<PaymentCubit>().makePayment(
              //   paymentIntentInputModel: PaymentIntentInputModel(
              //     amount: amount,
              //     currency: 'USD',
              //     customerId: "cus_TuZd7xfPuxvFlw",
              //   ),
              // );

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => PaypalCheckoutView(
                    sandboxMode: true,
                    clientId: ApiKeys.paypalClientId,
                    secretKey: ApiKeys.paypalSecretKey,
                    transactions: const [
                      {
                        "amount": {
                          "total": '100',
                          "currency": "USD",
                          "details": {
                            "subtotal": '100',
                            "shipping": '0',
                            "shipping_discount": 0,
                          },
                        },
                        "description": "The payment transaction description.",
                        "item_list": {
                          "items": [
                            {
                              "name": "Apple",
                              "quantity": 4,
                              "price": '10',
                              "currency": "USD",
                            },
                            {
                              "name": "Pineapple",
                              "quantity": 5,
                              "price": '12',
                              "currency": "USD",
                            },
                          ],

                          // Optional
                          //   "shipping_address": {
                          //     "recipient_name": "Tharwat samy",
                          //     "line1": "tharwat",
                          //     "line2": "",
                          //     "city": "tharwat",
                          //     "country_code": "EG",
                          //     "postal_code": "25025",
                          //     "phone": "+00000000",
                          //     "state": "ALex"
                          //  },
                        },
                      },
                    ],
                    note: "Contact us for any questions on your order.",
                    onSuccess: (Map params) async {
                      log("onSuccess: $params");
                      Navigator.pop(context);
                    },
                    onError: (error) {
                      log("onError: $error");
                      Navigator.pop(context);
                    },
                    onCancel: () {
                      log('cancelled:');
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
            text: 'Continue',
            isLoading: state is PaymentLoadingState,
          ),
        );
      },
    );
  }
}
