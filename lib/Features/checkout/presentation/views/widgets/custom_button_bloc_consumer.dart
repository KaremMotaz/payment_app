import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/payment_intent_input_model.dart';
import 'package:payment_app/Features/checkout/presentation/views/manager/payment_cubit/payment_cubit.dart';
import 'package:payment_app/core/extensions/context_extensions.dart';
import 'package:payment_app/core/functions/error_dialog.dart';
import 'package:payment_app/core/routing/routes.dart';
import 'package:payment_app/core/widgets/custom_button.dart';

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
              context.read<PaymentCubit>().makePayment(
                paymentIntentInputModel: PaymentIntentInputModel(
                  amount: amount,
                  currency: 'USD',
                  customerId: "cus_TuZd7xfPuxvFlw",
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
