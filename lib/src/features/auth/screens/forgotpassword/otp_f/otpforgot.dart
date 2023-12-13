import 'package:demo/src/constants/sizes.dart';
import 'package:demo/src/constants/text_str.dart';
import 'package:demo/src/features/auth/controllers/otpController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var otp;
    final otpcontroller = Get.put(OTPController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(mDefaultSize * 0.9),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                motpTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                motpsubTitle.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: mDefaultSize * 2,
              ),
              Text(
                "$motpMessage $mPhoneNo",
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: mDefaultSize - 10,
              ),
              OtpTextField(
                textStyle: Theme.of(context).textTheme.headlineSmall,
                numberOfFields: 6, fieldWidth: size.height * 0.05,
                fillColor: Theme.of(context).focusColor,
                filled: true,
                onSubmit: (code) {
                  otp = code;
                  otpcontroller.verifiedOTP(otp);
                },
                // borderWidth: mDefaultSize,s
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    otpcontroller.verifiedOTP(otp);
                  },
                  child: Text(mnext.toUpperCase())),
            ],
          ),
        ),
      ),
    );
  }
}
