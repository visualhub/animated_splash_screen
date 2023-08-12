import 'package:animated_splash_screen/src/features/welcome_screen/home_page.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;
  Future<void> startAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    animate.value = true;

    await Future.delayed(
      const Duration(milliseconds: 5000),
    );
    // ignore: use_build_context_synchronously
    Get.to(
      () => const HomePage(),
    );
  }
}
