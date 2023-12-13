import 'package:demo/src/features/home/screen/home/widget/productOne.dart';
import 'package:flutter/material.dart';

import '../../Product/model/productmodel.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarousel({
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      // width: 45,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            child: ProductOne(product: products[index]),
            padding: EdgeInsets.only(right: 3.0),
          );
        },
      ),
    );
  }
}
