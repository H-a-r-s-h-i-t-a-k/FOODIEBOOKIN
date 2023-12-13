import 'package:demo/src/constants/image_str.dart';
import 'package:demo/src/constants/text_str.dart';
import 'package:demo/src/features/auth/screens/login/widget/loginfooter.dart';
import 'package:demo/src/features/auth/screens/login/widget/loginform.dart';
import 'package:demo/src/features/auth/screens/signin/widget/login_footer.dart';
import 'package:demo/src/features/auth/screens/signin/widget/signform.dart';
import 'package:flutter/material.dart';

import '../../../../commonWiget/form/formHeaderWidget.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

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
                  mtextAlign: TextAlign.left,
                  size: size,
                  img: mWelcomeimg,
                  mheight: 0.12,
                  title: mSignUpPagetitle,
                  subtitle: mSignUPSubPagetitle),
              const SignForm(),
              SigninFooter(sizeh: size)
            ],
          ),
        )),
      ),
    );
  }
}





// class SigninScreen extends StatelessWidget {
//   const SigninScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var sizeh = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 HeaderForm(
//                     mtextAlign: TextAlign.left,
//                     size: sizeh,
//                     img: mWelcomeimg,
//                     mheight: 0.12,
//                     title: mSignUpPagetitle,
//                     subtitle: mSignUPSubPagetitle),
//                 // SignForm(),
//                 LoginForm(),
//                 SizedBox(
//                   height: mDefaultSize - 20,
//                 ),
//                 SigninFooter(sizeh: sizeh),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
