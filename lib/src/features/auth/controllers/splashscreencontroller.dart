// import 'package:demo/src/features/auth/screens/start/Ascreen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class UpwardAnimationController extends GetxController {
//   static UpwardAnimationController get find => Get.find();
//   // don't need to call it's intances only need to use this in appliction
//   RxBool animate = false.obs; //observable  make change whenever it present
//   Future startAnimate() async {
//     await Future.delayed(const Duration(milliseconds: 500));
//     animate.value = true; //can't assign bool   only take .value
//     await Future.delayed(const Duration(milliseconds: 5000));
//     Get.offAll(() => AuthScreen());
//     // Get.to(AuthScreen());
//     // Navigator.pushReplacement(
//     //     context, MaterialPageRoute(builder: (context) => AuthScreen()));
//   }
// }
