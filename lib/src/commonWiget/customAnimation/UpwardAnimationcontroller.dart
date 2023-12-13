import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../features/auth/screens/start/Ascreen.dart';

class UpwardAnimationController extends GetxController {
  static UpwardAnimationController get find => Get.find();
  // don't need to call it's intances only need to use this in appliction
  RxBool animate = false.obs; //observable  make change whenever it present
  Future startAnimate() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true; //can't assign bool   only take .value
    await Future.delayed(const Duration(milliseconds: 4000));
    animate.value = false; //can't assign bool   only take .value
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAll(() => AuthScreen());
  }

  Future startAuthAnimate() async {
    await Future.delayed(const Duration(milliseconds: 20));
    animate.value = true; //can't assign bool   only take .value

    // animate.value = false; //can't assign bool   only take .value
    // await Future.delayed(const Duration(milliseconds: 5000));
  }
}
