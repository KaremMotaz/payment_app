import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_app/Features/checkout/data/mock_data/payment_transaction_mock.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/payment_intent_input_model.dart';
import 'package:payment_app/Features/checkout/presentation/views/manager/payment_cubit/payment_cubit.dart';
import 'package:payment_app/core/extensions/context_extensions.dart';
import 'package:payment_app/core/functions/error_dialog.dart';
import 'package:payment_app/core/routing/routes.dart';
import 'package:payment_app/core/widgets/custom_button.dart';

import '../../../../../core/utils/api_keys.dart';
import '../../../data/models/paybal/payment_transaction_model.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  final bool isPaypal;
  final String amount;
  const CustomButtonBlocConsumer({
    super.key,
    required this.amount,
    required this.isPaypal,
  });

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
              if (isPaypal) {
                PaymentTransactionModel mockPayment =
                    PaymentTransactionMock.mockPaymentTransactionModel;
                executePayPalPayment(context, mockPayment);
              } else {
                executeStripePayment(context);
              }
            },
            text: 'Continue',
            isLoading: state is PaymentLoadingState,
          ),
        );
      },
    );
  }

  void executeStripePayment(BuildContext context) {
    context.read<PaymentCubit>().makePayment(
      paymentIntentInputModel: PaymentIntentInputModel(
        amount: amount,
        currency: 'USD',
        customerId: "cus_TuZd7xfPuxvFlw",
      ),
    );
  }

  void executePayPalPayment(
    BuildContext context,
    PaymentTransactionModel mockPayment,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: ApiKeys.paypalClientId,
          secretKey: ApiKeys.paypalSecretKey,
          transactions: [
            {
              "amount": mockPayment.amount.toJson(),
              "description": mockPayment.description,
              "item_list": mockPayment.itemList.toJson(),
            },
          ],
          note: "Contact us for any questions on your order.",
          onSuccess: (Map params) async {
            log("onSuccess: $params");
            context.pushAndRemoveUntil(
              Routes.thankYouView,
              predicate: (route) {
                if (route.settings.name == "/") {
                  return true;
                } else {
                  return false;
                }
              },
            );
          },
          onError: (error) {
            log("onError: $error");
            context.pop();
          },
          onCancel: () {
            log('cancelled:');
            context.pop();
          },
        ),
      ),
    );
  }
}
