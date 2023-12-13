import 'package:demo/src/features/auth/controllers/signupController.dart';
import 'package:demo/src/features/auth/screens/forgotpassword/otp_f/otpforgot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../commonWiget/TextWidget/customTextfield.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_str.dart';

class SignForm extends StatelessWidget {
  const SignForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    var controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Form(
        key: _formKey,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomtextFeild(
              obscureText: false,
              controller: controller.fullName,
              customicon: Icon(Icons.person),
              text: 'FullName',
            ),
            SizedBox(
              height: mDefaultSize - 10,
            ),
            CustomtextFeild(
              controller: controller.email,
              obscureText: false,
              customicon: Icon(Icons.email_outlined),
              text: mEmail,
            ),
            SizedBox(
              height: mDefaultSize - 10,
            ),
            CustomtextFeild(
              controller: controller.phoneNo,
              obscureText: false,
              customicon: Icon(Icons.phone_enabled_outlined),
              text: mPhoneNo,
            ),
            SizedBox(
              height: mDefaultSize - 10,
            ),
            CustomtextFeild(
              controller: controller.password,
              obscureText: false,
              customicon: Icon(Icons.password_outlined),
              text: mPassword,
            ),
            SizedBox(
              height: mDefaultSize - 10,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  SignUpController.instance
                      .phoneAuthentication(controller.phoneNo.text.trim());
                  Get.to(() => const OtpScreen());

                  // SignUpController.instance.registerUser(
                  //     controller.email.text.trim(),
                  //     controller.password.text.trim());
                }
              },
              child: Text(
                "Sign in".toUpperCase(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            SizedBox(
              height: mDefaultSize - 10,
            ),
          ],
        ));
  }
}
