import 'package:demo/src/constants/image_str.dart';
import 'package:demo/src/constants/text_str.dart';
import 'package:demo/src/features/auth/screens/login/widget/loginfooter.dart';
import 'package:demo/src/features/auth/screens/login/widget/loginform.dart';
import 'package:flutter/material.dart';

import '../../../../commonWiget/form/formHeaderWidget.dart';

class loginScreen extends StatelessWidget {
  loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderForm(
                size: size,
                mheight: 0.19,
                title: mLoginPagetitle,
                subtitle: mLoginSubPagetitle,
                img: mWelcomeimg,
              ),
              const LoginForm(),
              LoginFooter(sizeh: size)
            ],
          ),
        )),
      ),
    );
  }
}
