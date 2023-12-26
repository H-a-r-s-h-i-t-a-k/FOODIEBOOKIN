// import 'package:demo/src/constants/sizes.dart';
// import 'package:demo/src/constants/text_str.dart';
// import 'package:demo/src/features/account/screens/ac_screen.dart';
// import 'package:demo/src/features/cart/cscreen.dart';
// import 'package:demo/src/features/home/screen/home/Home.dart';
// import 'package:demo/src/features/payment/screen/pyscreen.dart';
// import 'package:demo/src/repository/auth_repo/authentication_repo.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

import '../../../../constants/colors.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  var widgetA;
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    var bar = true;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                mAppName,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: mWhiteColor),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          titleTextStyle: Theme.of(context).textTheme.headlineMedium,
          // elevation: 4,
          backgroundColor:
              isDark ? mPrimaryColor : Colors.black.withOpacity(0.8),
          iconTheme: IconThemeData(
            color: mWhiteColor,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: mPrimaryColor,
          child: Container(
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    color: mWhiteColor,
                    icon: Icon(
                      Icons.home,
                    ),
                    onPressed: () {
                      setState(() {
                        widgetA = HomeScreen();
                      });
                    },
                  ),
                  IconButton(
                    color: mWhiteColor,
                    onPressed: () {
                      setState(() {
                        widgetA = CartScreen();
                        // Get.to(() => CartScreen());
                      });
                    },
                    icon: Icon(Icons.shopping_cart),
                  ),
                  IconButton(
                    color: mWhiteColor,
                    onPressed: () {
                      setState(() {
                        widgetA = AccountScreen();
                      });
                    },
                    icon: Icon(Icons.person),
                  ),
                ]),
          ),
        ),
        body: widgetA,
      ),
    );
  }
}
