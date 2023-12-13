import 'package:demo/src/features/auth/screens/forgotpassword/choice_f/choiceforgot.dart';
import 'package:demo/src/features/auth/screens/forgotpassword/mail_f/mailforgot.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_str.dart';

class ForgotPasswordScreen {
  static Future<dynamic> mShowModelbottomSheet(
      BuildContext context, Size size) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              color: Theme.of(context).primaryColorLight,
              padding: EdgeInsets.all(size.width * 0.08),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(mforgotpassTitle,
                        style: Theme.of(context).textTheme.headlineMedium),
                    Text(
                      mforgotpassSubTitle,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    IconTextGesture(
                        onTap: () {
                          Navigator.pop(context);
                          Get.to(() => MailForgotScreen());
                        },
                        title: mEmail,
                        subtitle: mResetemail,
                        icon: Icon(
                          Icons.mark_email_read_outlined,
                          size: 60.0,
                        )),
                    SizedBox(
                      height: mDefaultSize,
                    ),
                    IconTextGesture(
                        onTap: () {},
                        title: mPhoneNo,
                        subtitle: mResetphone,
                        icon: Icon(
                          Icons.mobile_friendly_outlined,
                          size: 60.0,
                        )),
                  ]),
            ));
  }
}
