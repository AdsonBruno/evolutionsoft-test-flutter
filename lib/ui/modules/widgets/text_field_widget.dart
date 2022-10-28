import 'package:flutter/material.dart';
import 'package:evolutionsoft_test_flutter/ui/themes/app_text_styles.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({
    super.key,
    required this.labelText,
    this.controller,
    this.hintText,
    this.obscureText,
    this.textInputAction,
  });

  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final bool? obscureText;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyles.titleTextField,
      ),
      style: TextStyles.titleTextField,
      obscureText: obscureText == null ? false : true,
    );
  }
}
