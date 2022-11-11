import 'package:evolutionsoft_test_flutter/app/data/provider/auth_provider.dart';
import 'package:evolutionsoft_test_flutter/app/data/repository/auth_repository.dart';
import 'package:evolutionsoft_test_flutter/app/modules/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<AuthRepository>(() => AuthRepository());
    Get.lazyPut<AuthApiClient>(() => AuthApiClient());
  }
}
