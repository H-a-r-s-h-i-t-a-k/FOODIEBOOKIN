// import 'package:demo/src/features/home/screen/Product/model/productmodel.dart';
// import 'package:demo/src/features/home/screen/home/widget/productOne.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// import '../../../../constants/colors.dart';

class CatalogScreen extends StatelessWidget {
  final String category;
  const CatalogScreen({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text(
              category,
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
        backgroundColor: isDark ? mPrimaryColor : Colors.black,
        // iconTheme: IconThemeData(
        //   color: mWhiteColor,
        // ),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        // ],
      ),
      body: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.15),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.15),
                itemCount: categoryProducts.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: ProductOne(
                      product: categoryProducts[index],
                    ),
                  );
                });
          }),
    );
  }
}
