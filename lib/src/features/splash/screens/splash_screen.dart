import 'package:animated_splash_screen/src/common_widgets/animated_opacity_widget/controllers/animated_opacity_controller.dart';
import 'package:animated_splash_screen/src/common_widgets/animated_opacity_widget/models/animated_opacity_model.dart';
import 'package:animated_splash_screen/src/common_widgets/animated_opacity_widget/screens/animated_opacity_widget.dart';
import 'package:animated_splash_screen/src/constants/image_strings.dart';
import 'package:animated_splash_screen/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AnimatedOpacityController());
    controller.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            TAnimatedOpacityWidget(
              duration: 2800,
              animate: AnimatedOpacityModel(
                leftAfter: 0,
                leftBefore: -30,
                topAfter: 0,
                topBefore: -30,
              ),
              child: Image.asset(
                tTopSplashImage,
                height: 100,
              ),
            ),
            TAnimatedOpacityWidget(
              duration: 2800,
              animate: AnimatedOpacityModel(
                topAfter: 110,
                topBefore: 110,
                leftBefore: -80,
                leftAfter: 30,
              ),
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
            TAnimatedOpacityWidget(
              duration: 3000,
              animate: AnimatedOpacityModel(bottomBefore: 30, bottomAfter: 75),
              child: Image.asset(
                tSplashImage,
                height: 360,
              ),
            )
          ],
        ),
      ),
    );
  }
}
