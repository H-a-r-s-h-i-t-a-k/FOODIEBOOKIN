import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../repository/auth_repo/authentication_repo.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController phoneNo = TextEditingController();

  void registerUser(String email, String password) {
    AuthenticationRepo.instance.createUserWithEmailAndPassword(email, password);
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepo.instance.phoneAuthentication(phoneNo);
  }
}
