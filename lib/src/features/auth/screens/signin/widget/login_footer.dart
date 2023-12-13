import 'package:demo/src/features/auth/screens/login/login_screen.dart';
import 'package:demo/src/features/auth/screens/signin/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/image_str.dart';
import '../../../../../constants/sizes.dart';

class SigninFooter extends StatelessWidget {
  const SigninFooter({
    super.key,
    required this.sizeh,
  });

  final Size sizeh;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
                height: mDefaultSize + 30,
                width: sizeh.width * 0.06,
                child: Text(
                  "  OR ",
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
              "   Login with Google".toUpperCase(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.to(() => loginScreen());
          },
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Already have an Account? ",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                TextSpan(
                  text: "login".toUpperCase(),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
