import 'package:demo/src/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Pyscreen extends StatefulWidget {
  final int amount;
  const Pyscreen({super.key, required this.amount});

  @override
  PyscreenState createState() => PyscreenState();
}

class PyscreenState extends State<Pyscreen> {
  late var _razorpay;
  var amountController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    print("Payment Done");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print("Payment Fail");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }

  @override
  Widget build(BuildContext context) {
    var payamount = widget.amount;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text("Food App"),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.symmetric(
            vertical: size.width * 0.0004, horizontal: size.height * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            //   child: TextField(
            //     keyboardType: TextInputType.number,
            //     style: Theme.of(context)
            //         .textTheme
            //         .titleLarge!
            //         .copyWith(color: Colors.black),
            //     controller: amountController,
            //     decoration: InputDecoration(
            //       hintText: "Enter your Amount",
            //       hintStyle: Theme.of(context).textTheme.headlineSmall,
            //     ),
            //   ),
            // ),
            Container(
              width: size.width,
              height: size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10 * 18),
                  bottomRight: Radius.circular(10 * 18),
                ),
                color: mPrimaryColor,
              ),
              child: Center(
                child: SizedBox(
                  child: Text(" \u{20B9} $payamount ",
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.displaySmall),
                ),
              ),
            ),
            ElevatedButton(
                // color: Colors.grey,
                child: Text(
                  "Pay Amount",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                onPressed: () {
                  ///Make payment
                  var options = {
                    'key': "rzp_test_xvlZZBGCo0SzL0",
                    // amount will be multiple of 100
                    'amount': (int.parse(widget.amount.toString()) * 100)
                        .toString(), //So its pay 500
                    'name': 'Food App',
                    'description': 'Demmo',
                    'timeout': 300, // in seconds
                    'prefill': {
                      'contact': '9191919191',
                      'email': 'foodapp@gmail.com'
                    }
                  };
                  _razorpay.open(options);
                })
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }
}
