import 'package:animated_splash_screen/src/common_widgets/animated_opacity_widget/controllers/animated_opacity_controller.dart';
import 'package:animated_splash_screen/src/common_widgets/animated_opacity_widget/models/animated_opacity_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TAnimatedOpacityWidget extends StatelessWidget {
  const TAnimatedOpacityWidget({
    super.key,
    required this.duration,
    required this.animate,
    required this.child,
  });

  final AnimatedOpacityModel? animate;
  final int duration;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final double opacityDuration = duration / 2;
    final controller = Get.put(AnimatedOpacityController());

    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: duration),
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
        left:
            controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        bottom: controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        right: controller.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        child: AnimatedOpacity(
          opacity: controller.animate.value ? 1 : 0,
          duration: Duration(milliseconds: opacityDuration.toInt()),
          child: child,
        ),
      ),
    );
  }
}
