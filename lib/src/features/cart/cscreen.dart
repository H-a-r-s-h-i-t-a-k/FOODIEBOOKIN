// import 'package:demo/src/features/cart/controlers/blocs/cart_bloc.dart';
import 'package:demo/src/features/cart/model/cart_m.dart';
import 'package:demo/src/features/cart/widget/cart-list.dart';
import 'package:demo/src/features/payment/screen/pyscreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is CartLoaded) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 410,
                        child: ListView.builder(
                          itemCount: state.cart
                              .productQuantity(state.cart.products)
                              .keys
                              .length,
                          itemBuilder: (context, index) {
                            return CartProductCart(
                              product: state.cart
                                  .productQuantity(state.cart.products)
                                  .keys
                                  .elementAt(index),
                              quantity: state.cart
                                  .productQuantity(state.cart.products)
                                  .values
                                  .elementAt(index),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Divider(
                      color: Theme.of(context).dividerColor,
                      thickness: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 30.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'subtotal'.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '\u{20B9} ${state.cart.subtotalString}',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'delivery fee'.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '\u{20B9} ${state.cart.deliveryfeeString}',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => Pyscreen(
                              amount: 4870,
                            ));
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                                color:
                                    const Color.fromARGB(255, 173, 195, 231)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 10,
                            height: 55,
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.7)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'total'.toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    '\u{20B9} ${state.cart.totalString()}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                            onPressed: () {}, child: Text("Cash On Delivery")),
                        OutlinedButton(
                            onPressed: () {
                              Get.to(() => Pyscreen(
                                    amount: state.cart.totalString().toInt(),
                                  ));
                            },
                            child: Text(
                              "Payment Now ",
                            )),
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        } else {
          return Text("Something went wrong ");
        }
      },
    );
  }
}
