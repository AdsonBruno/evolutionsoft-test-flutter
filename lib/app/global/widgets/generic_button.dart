import 'package:evolutionsoft_test_flutter/app/themes/app_colors.dart';
import 'package:evolutionsoft_test_flutter/app/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class GenericButtonWidget extends StatelessWidget {
  const GenericButtonWidget({
    super.key,
    required this.nameButton,
    required this.onPressed,
    this.buttonColor,
    this.buttonHeight,
    this.buttonWidth,
    this.radiusButton,
    this.isLoading,
  });

  final String nameButton;
  // final Navigator? routeName;
  final void Function() onPressed;
  final Color? buttonColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? radiusButton;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.primary,
          padding: const EdgeInsets.only(
            left: 138,
            right: 138,
            top: 12,
            bottom: 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: radiusButton == null
                ? BorderRadius.circular(8)
                : BorderRadius.circular(radiusButton!),
          )),
      child: isLoading == true
          ? const SizedBox(
              height: 25,
              width: 30,
              child: CircularProgressIndicator(
                color: AppColors.white,
              ),
            )
          : Text(
              nameButton,
              style: TextStyles.textOfButton,
            ),
    );
  }
}
