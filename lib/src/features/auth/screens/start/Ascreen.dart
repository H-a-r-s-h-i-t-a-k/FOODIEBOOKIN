import 'package:demo/src/commonWiget/customAnimation/UpwardAnimationWidget.dart';
import 'package:demo/src/commonWiget/customAnimation/UpwardAnimationmodel.dart';
import 'package:demo/src/constants/colors.dart';
import 'package:demo/src/constants/image_str.dart';
import 'package:demo/src/constants/sizes.dart';
import 'package:demo/src/constants/text_str.dart';
import 'package:demo/src/features/auth/screens/login/login_screen.dart';
import 'package:demo/src/features/auth/screens/signin/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../commonWiget/customAnimation/UpwardAnimationcontroller.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpwardAnimationController());
    controller.startAuthAnimate();

    final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: isDark ? mDarkColor : Colors.white,
      body: Stack(
        children: [
          UpwardAnimation(
            durationInMls: 1300,
            animPosition: CAnimatedposition(
                bottomAfter: 0,
                bottomBefore: -600,
                leftAfter: 0,
                leftBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
                topAfter: 0,
                topBefore: 0),
            child: Container(
              padding: const EdgeInsets.all(mDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    height: height * 0.48,
                    width: 700,
                    image: AssetImage(mWelcomeimg2),
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        mWelcomeTitle,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        mWelcomeSubTitle,
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => loginScreen()),
                          child: Text(
                            "login".toUpperCase(),
                            style: isDark
                                ? Theme.of(context).textTheme.labelLarge
                                : TextStyle(color: Colors.black),
                          ),
                          style: Theme.of(context).outlinedButtonTheme.style,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          // onPressed: () {},
                          onPressed: () => Get.to(() => SigninScreen()),
                          child: Text(
                            "Signup".toUpperCase(),
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          style: Theme.of(context).elevatedButtonTheme.style,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
