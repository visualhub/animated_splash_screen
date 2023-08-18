import 'package:animated_splash_screen/src/features/welcome_screen/home_page.dart';
import 'package:get/get.dart';

class AnimatedOpacityController extends GetxController {
  static AnimatedOpacityController get find => Get.find();
  RxBool animate = false.obs;
  Future<void> startAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    animate.value = true;

    await Future.delayed(
      const Duration(milliseconds: 3000),
    );
    animate.value = false;
    await Future.delayed(
      const Duration(milliseconds: 2000),
    );
    // ignore: use_build_context_synchronously
    Get.to(
      () => const HomePage(),
    );
  }
}
