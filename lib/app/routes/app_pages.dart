import 'package:evolutionsoft_test_flutter/app/modules/home/home_binding.dart';
import 'package:evolutionsoft_test_flutter/app/modules/home/home_page.dart';
import 'package:evolutionsoft_test_flutter/app/modules/login/login_binding.dart';
import 'package:evolutionsoft_test_flutter/app/modules/login/login_page.dart';
import 'package:evolutionsoft_test_flutter/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const login = Routes.login;

  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(), //InitialView(),
      binding: LoginBinding(), //InitialBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
