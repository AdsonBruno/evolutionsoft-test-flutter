import 'package:evolutionsoft_test_flutter/ui/themes/app_colors.dart';
import 'package:evolutionsoft_test_flutter/ui/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class GenericButtonWidget extends StatelessWidget {
  const GenericButtonWidget({
    super.key,
    required this.nameButton,
    required this.onPressed,
    // this.routeName,
    this.buttonColor,
    this.buttonHeight,
    this.buttonWidth,
    this.radiusButton,
  });

  final String nameButton;
  // final Navigator? routeName;
  final Function onPressed;
  final Color? buttonColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? radiusButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 40,
      decoration: BoxDecoration(
        color: buttonColor ?? AppColors.primary,
        borderRadius: radiusButton == null
            ? BorderRadius.circular(8)
            : BorderRadius.circular(radiusButton!),
      ),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(AppColors.overlayColorButton),
        ),
        onPressed: () {},
        child: Text(
          // 'Login',
          nameButton,
          style: TextStyles.textOfButton,
        ),
      ),
    );
  }
}
