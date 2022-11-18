import 'package:evolutionsoft_test_flutter/app/global/widgets/product_card_widget.dart';
import 'package:evolutionsoft_test_flutter/app/modules/home/home_controller.dart';
import 'package:evolutionsoft_test_flutter/app/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Get.mediaQuery.size.width,
              height: Get.mediaQuery.size.height * 0.25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/upper.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 14),
                      child: Image.asset(
                        'assets/images/supermarket-car-with-white-background.png',
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 15),
                      width: 125,
                      height: 100,
                      child: RichText(
                        text: TextSpan(
                            text: 'Confira nossos',
                            style: TextStyles.textSize18White,
                            children: [
                              TextSpan(
                                text: 'produtos',
                                style: TextStyles.textSize24White,
                              )
                            ]),
                      ),
                    ),
                    //
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            ProductCardWidget(
              cardTitle: 'Tomate',
              cardDescription:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
