import 'package:demo/src/commonWiget/TextWidget/customTextfield.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  CustomtextFeild(
                    text: "address".toUpperCase(),
                    obscureText: false,
                  ),
                  CustomtextFeild(
                    text: "city".toUpperCase(),
                    obscureText: false,
                  ),
                  CustomtextFeild(
                    text: "country".toUpperCase(),
                    obscureText: false,
                  ),
                  CustomtextFeild(
                    text: "zip code".toUpperCase(),
                    obscureText: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
