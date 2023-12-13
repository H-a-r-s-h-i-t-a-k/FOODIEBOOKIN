import "package:demo/src/commonWiget/customAnimation/UpwardAnimationWidget.dart";
import 'package:demo/src/commonWiget/customAnimation/UpwardAnimationcontroller.dart';
import "package:demo/src/commonWiget/customAnimation/UpwardAnimationmodel.dart";
import "package:demo/src/constants/colors.dart";
import "package:demo/src/constants/image_str.dart";
import "package:demo/src/constants/sizes.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "../../../../constants/text_str.dart";

class SplashSc extends StatelessWidget {
  SplashSc({super.key});

  // final upwardAnimationController = Get.put(UpwardAnimationController());

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    final size = MediaQuery.of(context).size;
    final controller = Get.put(UpwardAnimationController());
    controller.startAnimate();
    return SafeArea(
      child: Scaffold(
        backgroundColor: isDark ? mDarkColor : mWhiteColor,
        body: Stack(
          children: [
            UpwardAnimation(
              durationInMls: 1700,
              animPosition: CAnimatedposition(
                topAfter: -20,
                topBefore: -40,
                leftAfter: -55,
                leftBefore: -80,
              ),
              child: Image(
                image: AssetImage(
                  mSplashTopIcon,
                ),
                // fit: BoxFit.fill,
                height: size.height * 0.2,
                width: size.height * 0.4,
              ),
            ),
            UpwardAnimation(
              durationInMls: 1700,
              animPosition: CAnimatedposition(
                  topAfter: 200,
                  topBefore: 200,
                  leftAfter: mDefaultSize,
                  leftBefore: -80,
                  rightAfter: 0,
                  rightBefore: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mAppName,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    mAppTagline,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            UpwardAnimation(
              durationInMls: 1700,
              animPosition: CAnimatedposition(
                rightAfter: 0,
                bottomBefore: 50,
                bottomAfter: 200,
              ),
              child: Image(
                // alignment: Alignment.bottomRight,
                image: AssetImage(mWelcomeimg),
                width: size.width * 0.9,
              ),
            ),
            UpwardAnimation(
              durationInMls: 1700,
              animPosition: CAnimatedposition(
                  bottomBefore: 0,
                  bottomAfter: 70,
                  rightAfter: mDefaultSize,
                  rightBefore: mDefaultSize),
              child: Container(
                width: mSplashContainerSize,
                height: mSplashContainerSize,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: mPrimaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
