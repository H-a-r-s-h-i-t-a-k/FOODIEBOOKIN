import 'package:demo/src/commonWiget/customAnimation/UpwardAnimationmodel.dart';
import 'package:demo/src/features/auth/controllers/splashscreencontroller.dart';
import 'package:demo/src/features/auth/screens/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'UpwardAnimationcontroller.dart';

class UpwardAnimation extends StatelessWidget {
  UpwardAnimation({
    Key? key,
    required this.child,
    required this.durationInMls,
    this.animPosition,
  }) : super(key: key);

  final controller = Get.put(UpwardAnimationController());
  final int durationInMls;
  final Widget child;
  final CAnimatedposition? animPosition;

  @override
  Widget build(BuildContext context) {
    // final bool mopacity = controller.animate.value;
    return Obx(() => AnimatedPositioned(
          duration: Duration(milliseconds: durationInMls),
          top: controller.animate.value
              ? animPosition!.topAfter
              : animPosition!.topBefore,
          bottom: controller.animate.value
              ? animPosition!.bottomAfter
              : animPosition!.bottomBefore,
          left: controller.animate.value
              ? animPosition!.leftAfter
              : animPosition!.leftBefore,
          right: controller.animate.value
              ? animPosition!.rightAfter
              : animPosition!.rightBefore,
          child: AnimatedOpacity(
            duration: Duration.zero,
            opacity: controller.animate.value ? 1 : 0.5,
            child: child,
          ),
        ));
  }
}
