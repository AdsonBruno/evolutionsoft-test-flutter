import 'package:evolutionsoft_test_flutter/app/data/model/auth_model.dart';
import 'package:evolutionsoft_test_flutter/app/data/repository/auth_repository.dart';
import 'package:evolutionsoft_test_flutter/app/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

final box = GetStorage('evolutionsoft');

class LoginController extends GetxController {
  AuthModel? authModel;
  final repository = Get.find<AuthRepository>();
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
        box.write('authModel', authModel);
        Get.offAllNamed(Routes.home);
      }).catchError((error) {
        loading.value = false;
      });
    }
  }
}
