import 'package:animated_splash_screen/src/common_widgets/animated_opacity_widget/controllers/animated_opacity_controller.dart';
import 'package:animated_splash_screen/src/common_widgets/animated_opacity_widget/models/animated_opacity_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TAnimatedOpacityWidget extends StatelessWidget {
  const TAnimatedOpacityWidget({
    super.key,
    required this.duration,
    required this.model,
    required this.child,
  });

  final AnimatedOpacityModel? model;
  final int duration;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final double opacityDuration = duration / 2;
    final controller = Get.put(AnimatedOpacityController());

    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: duration),
        top: controller.animate.value ? model!.topAfter : model!.topBefore,
        left: controller.animate.value ? model!.leftAfter : model!.leftBefore,
        bottom:
            controller.animate.value ? model!.bottomAfter : model!.bottomBefore,
        right:
            controller.animate.value ? model!.rightAfter : model!.rightBefore,
        //width: 75,
        child: AnimatedOpacity(
          opacity: controller.animate.value ? 1 : 0,
          duration: Duration(milliseconds: opacityDuration.toInt()),
          child: child,
        ),
      ),
    );
  }
}
