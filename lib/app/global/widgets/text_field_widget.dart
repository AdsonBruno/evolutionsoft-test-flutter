import 'package:flutter/material.dart';
import 'package:evolutionsoft_test_flutter/app/themes/app_text_styles.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({
    Key? key,
    required this.labelText,
    required this.controller,
    this.hintText,
    this.obscureText,
    this.textInputAction,
    this.suffixIcons,
    this.onChanged,
  }) : super(key: key);

  final String labelText;
  final String? hintText;
  final TextEditingController controller;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final Widget? suffixIcons;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Campo requerido';
        }
        return null;
      },
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyles.titleTextField,
        suffixIcon: suffixIcons,
      ),
      style: TextStyles.titleTextField,
      obscureText: obscureText == null ? false : true,
    );
  }
}
