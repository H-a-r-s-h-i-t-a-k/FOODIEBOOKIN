import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/src/features/home/screen/Product/model/productmodel.dart';
import 'package:demo/src/features/home/screen/category/model/hcategory.dart';
import 'package:demo/src/features/home/screen/home/widget/nameOfproduct.dart';
import 'package:demo/src/features/home/screen/home/widget/productCarousel.dart';
import 'package:flutter/material.dart';

import 'widget/categ.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              enlargeCenterPage: true,
              scrollDirection: Axis.vertical,
              // autoPlay: true,
            ),
            items: Category.categories
                .map((category) => ImagCategory(category: category))
                .toList(),
          )),
          NamingOfProduct(name: "Momos."),
          // ProductOne(product: Product.products[0]),
          ProductCarousel(products: Product.products),

          NamingOfProduct(name: "Noodles..."),
          // ProductOne(product: Product.products[0]),

          ProductCarousel(products: Product.products),
        ],
      ),
    );
  }
}
