import 'package:evolutionsoft_test_flutter/app/modules/login/login_page.dart';
import 'package:evolutionsoft_test_flutter/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EvolutionMarket',
      theme: ThemeData(
        primaryColor: AppColors.backgroundApp,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
