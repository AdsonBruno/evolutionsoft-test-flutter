import 'package:evolutionsoft_test_flutter/app/themes/app_colors.dart';
import 'package:evolutionsoft_test_flutter/app/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PasswordTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  bool showPassword;
  Function() changeShowPassword;

  PasswordTextField({
    Key? key,
    required this.controller,
    required this.onChanged,
    this.showPassword = false,
    required this.changeShowPassword,
  }) : super(key: key);

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
      obscureText: !showPassword,
      onChanged: onChanged,
      decoration: InputDecoration(
          labelText: 'Senha',
          labelStyle: TextStyles.titleTextField,
          hintText: 'Insira sua senha',
          hintStyle: TextStyles.titleTextField,
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.visibility_outlined,
              color: AppColors.primary,
              size: 22,
            ),
            onPressed: changeShowPassword,
          )),
    );
  }
}
