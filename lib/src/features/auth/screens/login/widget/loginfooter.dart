import 'package:demo/src/features/auth/screens/login/login_screen.dart';
import 'package:demo/src/features/auth/screens/signin/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/image_str.dart';
import '../../../../../constants/sizes.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    required this.sizeh,
  });

  final Size sizeh;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: mDefaultSize - 30,
        ),
        SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: sizeh.width * 0.27,
                child: Divider(),
              ),
              SizedBox(
                height: mDefaultSize + 40,
                width: sizeh.width * 0.06,
                child: Text(
                  "  OR   ",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              SizedBox(width: sizeh.width * 0.27, child: Divider()),
            ],
          ),
        ),
        SizedBox(
          height: mDefaultSize - 30,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: Image.asset(
              mgoogle,
              scale: 1.7,
            ),
            label: Text(
              "   Sign-in with Google".toUpperCase(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.to(() => SigninScreen());
          },
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Don't have an Account? ",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                TextSpan(
                  text: "Signup".toUpperCase(),
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
