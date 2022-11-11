import 'package:evolutionsoft_test_flutter/app/global/widgets/generic_button.dart';
import 'package:evolutionsoft_test_flutter/app/global/widgets/password_text_field.dart';
import 'package:evolutionsoft_test_flutter/app/global/widgets/text_field_widget.dart';
import 'package:evolutionsoft_test_flutter/app/modules/login/login_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.mediaQuery.size.width,
              height: Get.mediaQuery.size.height * 0.34,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/upper.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Image.asset('assets/images/shopping-cart.png'),
              ),
            ),
            const SizedBox(height: 56),
            Form(
              key: controller.formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 23, top: 20, right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InputTextWidget(
                      labelText: 'E-mail',
                      controller: controller.emailController,
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 34),
                    Obx(() => PasswordTextField(
                          showPassword: controller.showPassword.value,
                          controller: controller.passwordController,
                          onChanged: (value) {},
                          changeShowPassword: () {
                            controller.showPassword.value =
                                !controller.showPassword.value;
                          },
                        )),
                    const SizedBox(height: 47),
                    Obx(
                      () => GenericButtonWidget(
                        isLoading: controller.loading.value,
                        nameButton: 'Login',
                        onPressed: () {
                          controller.login();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
