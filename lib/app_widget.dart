import 'package:evolutionsoft_test_flutter/app/routes/app_pages.dart';
import 'package:evolutionsoft_test_flutter/app/routes/app_routes.dart';
import 'package:evolutionsoft_test_flutter/app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EvolutionMarket',
      theme: ThemeData(
        primaryColor: AppColors.backgroundApp,
      ),
      initialRoute: Routes.login,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
