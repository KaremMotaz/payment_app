import 'package:flutter/widgets.dart';
import 'package:payment_app/core/widgets/custom_circular_progress_indicator.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.isLoading = false,
  });

  final void Function()? onTap;
  final bool isLoading;

  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: ShapeDecoration(
          color: const Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: isLoading
              ? const CustomCircularProgressIndicator()
              : Text(
                  text,
                  textAlign: TextAlign.center,
                  style: AppStyles.style22,
                ),
        ),
      ),
    );
  }
}
