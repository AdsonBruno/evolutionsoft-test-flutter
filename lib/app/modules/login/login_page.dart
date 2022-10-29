import 'package:evolutionsoft_test_flutter/app/global/widgets/generic_button.dart';
import 'package:evolutionsoft_test_flutter/app/global/widgets/text_field_widget.dart';
// import 'package:evolutionsoft_test_flutter/ui/themes/app_colors.dart';
import 'package:evolutionsoft_test_flutter/app/themes/app_images.dart';
// import 'package:evolutionsoft_test_flutter/ui/themes/app_text_styles.dart';
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 24, bottom: 34),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const InputTextWidget(
                    labelText: 'E-mail',
                    hintText: 'Insira seu e-mail',
                  ),
                  const SizedBox(height: 34),
                  const InputTextWidget(
                    labelText: 'Senha',
                    hintText: 'Insira sua senha',
                    obscureText: true,
                  ),
                  const SizedBox(height: 47),
                  GenericButtonWidget(
                    nameButton: 'Login',
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
