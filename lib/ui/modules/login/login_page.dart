import 'package:evolutionsoft_test_flutter/ui/modules/widgets/text_field_widget.dart';
import 'package:evolutionsoft_test_flutter/ui/themes/app_colors.dart';
import 'package:evolutionsoft_test_flutter/ui/themes/app_images.dart';
import 'package:evolutionsoft_test_flutter/ui/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.backgroundApp,
      body: Column(
        children: [
          SizedBox(
            width: size.width,
            height: size.height * 0.36,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Stack(
                children: [
                  Image.asset(AppImages.backgroundImage),
                  Positioned(
                    top: 92,
                    bottom: 68,
                    right: 52.26,
                    left: 56,
                    child: Image.asset(
                      AppImages.shoppinCart,
                      width: 248.26,
                      height: 42,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 56),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 23, right: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Expanded(
                    child: InputTextWidget(
                      labelText: 'E-mail',
                      hintText: 'Insira seu e-mail',
                    ),
                  ),
                  const SizedBox(height: 34),
                  const Expanded(
                    child: InputTextWidget(
                      labelText: 'Senha',
                      hintText: 'Insira sua senha',
                      obscureText: true,
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 312,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(
                              AppColors.overlayColorButton),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyles.textOfButton,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
