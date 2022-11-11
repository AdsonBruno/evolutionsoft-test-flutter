import 'package:evolutionsoft_test_flutter/app/data/model/auth_model.dart';
import 'package:evolutionsoft_test_flutter/app/data/repository/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final repository = Get.find<AuthRepository>();
  AuthModel? authModel;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool showPassword = false.obs;
  RxBool loading = false.obs;

  void login() async {
    if (formKey.currentState!.validate()) {
      loading.value = true;
      await repository
          .login(emailController.text, passwordController.text)
          .then((authModel) {
        loading.value = false;
      }).catchError((error) {
        loading.value = false;
      });
    }
  }
}
