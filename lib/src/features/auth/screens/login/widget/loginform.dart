import 'package:demo/src/constants/sizes.dart';
import 'package:demo/src/features/auth/screens/forgotpassword/choice_f/bottomSheet_forgot.dart';
import 'package:demo/src/features/home/screen/home/Bottom.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../../../../../commonWiget/TextWidget/customTextfield.dart';
import '../../../../../constants/text_str.dart';
import '../../../controllers/signupController.dart';
import '../../forgotpassword/otp_f/otpforgot.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomtextFeild(
              controller: controller.phoneNo,
              obscureText: false,
              customicon: Icon(Icons.phone),
              text: mEmail,
            ),
            SizedBox(
              height: mDefaultSize - 10,
            ),
            CustomtextFeild(
              obscureText: true,
              customicon: Icon(Icons.password_outlined),
              text: mPassword,
              sf_icon: Icon(Icons.remove_red_eye_outlined),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgotPasswordScreen.mShowModelbottomSheet(context, size);
                },
                child: Text(
                  "Forgot Password ?",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
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
                // Get.to(() => HomeScreen());
              },
              child: Text(
                "login".toUpperCase(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            SizedBox(
              height: mDefaultSize - 10,
            ),
          ],
        ),
      ),
    );
  }
}
