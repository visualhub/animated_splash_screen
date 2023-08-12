import 'package:animated_splash_screen/src/constants/image_strings.dart';
import 'package:animated_splash_screen/src/constants/text_strings.dart';
import 'package:animated_splash_screen/src/features/splash/controller/splash_screen_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashScreenController());
    controller.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 5000),
                top: controller.animate.value ? 10 : -30,
                left: controller.animate.value ? 10 : -30,
                width: 75,
                child: Image.asset(tTopSplashImage),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 5000),
                top: 80,
                left: controller.animate.value ? 75 : 0,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: controller.animate.value ? 1 : 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tAppTitle,
                            style: Theme.of(context).textTheme.titleMedium),
                        Text(
                          tAppDescription,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ]),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 5000),
                bottom: controller.animate.value ? 150 : 0,
                left: controller.animate.value ? -45 : 0,
                width: 450,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: controller.animate.value ? 1 : 0,
                  child: Image.asset(tSplashImage),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
