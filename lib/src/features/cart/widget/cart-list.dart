import 'package:demo/src/features/cart/controlers/blocs/cart_bloc.dart';
import 'package:demo/src/features/cart/controlers/blocs/cart_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../home/screen/Product/model/productmodel.dart';

class CartProductCart extends StatelessWidget {
  final Product product;

  final int quantity;
  const CartProductCart({
    super.key,
    required this.product,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Theme.of(context).cardColor,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            Image.network(
              product.imageUrl,
              width: 60,
              height: 50,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  Text(
                    "\u{20B9} ${product.price}",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 3,
            ),
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        context
                            .read<CartBloc>()
                            .add(CartProductRemoved(product));
                      },
                      icon: Icon(Icons.remove_circle),
                    ),
                    Text(
                      '$quantity',
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<CartBloc>().add(CartProductAdded(product));
                      },
                      icon: Icon(Icons.add_circle),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
