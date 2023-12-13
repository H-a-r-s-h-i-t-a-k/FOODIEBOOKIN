import 'package:demo/src/features/cart/controlers/blocs/cart_bloc.dart';
import 'package:demo/src/features/home/screen/Product/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../cart/controlers/blocs/cart_event.dart';
import '../../Product/model/productmodel.dart';

class ProductOne extends StatelessWidget {
  final Product product;
  ProductOne({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.to(() => ProductScreen());
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: 150,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 90,
              left: 5,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(50),
                ),
              )),
          Positioned(
              top: 90,
              left: 5,
              // bottom: 5,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5 - 10,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '\u{20B9}${product.price}',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        color: Colors.white.withOpacity(0.8)),
                              ),
                            ],
                          ),
                        ),
                        BlocBuilder<CartBloc, CartState>(
                          builder: (context, state) {
                            if (state is CartLoading) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (state is CartLoaded) {
                              return Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      context
                                          .read<CartBloc>()
                                          .add(CartProductAdded(product));
                                    },
                                    icon: Icon(
                                      Icons.add_rounded,
                                      color: Colors.white,
                                    )),
                              );
                            } else {
                              return Text("Something went wrong");
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
