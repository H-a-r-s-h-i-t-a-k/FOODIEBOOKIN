import 'package:demo/main.dart';
import 'package:demo/src/commonWiget/TextWidget/customTextfield.dart';
import 'package:demo/src/commonWiget/form/formHeaderWidget.dart';
import 'package:demo/src/constants/colors.dart';
import 'package:demo/src/constants/image_str.dart';
import 'package:demo/src/constants/sizes.dart';
import 'package:demo/src/constants/text_str.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../otp_f/otpforgot.dart';

class MailForgotScreen extends StatelessWidget {
  const MailForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(gradient: dgradiant),
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 60),
          child: Column(
            children: [
              HeaderForm(
                size: size,
                mheight: 0.4,
                img: mforgotimg,
                title: mforgotpassTitle,
                subtitle: mforgotpassSubTitle,
                mtextAlign: TextAlign.center,
                mcrossAxisAlignment: CrossAxisAlignment.center,
              ),
              SizedBox(
                height: mDefaultSize - 10,
              ),
              Form(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomtextFeild(
                          customicon: Icon(Icons.email_outlined),
                          text: mEmail,
                          obscureText: false),
                      SizedBox(
                        height: mDefaultSize - 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.pop(context);
                          Get.to(() => OtpScreen());
                        },
                        child: Text(
                          mnext.toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
