import 'package:equatable/equatable.dart';

import '../../home/screen/Product/model/productmodel.dart';

class Cart extends Equatable {
  final List<Product> products;
  Cart({this.products = const <Product>[]});

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);
  Map productQuantity(products) {
    var quantity = Map();
    products.forEach((product) {
      if (!quantity.containsKey(product)) {
        quantity[product] = 1;
      } else {
        quantity[product] += 1;
      }
    });
    return quantity;
  }

  double deliveryFee(subtotal) {
    if (subtotal >= 2000) {
      return 0.0;
    } else
      return 30.0;
  }

  double total(subtotal, deliveryfee) {
    return subtotal + deliveryFee(subtotal);
  }

  double totalString() => total(subtotal, deliveryFee);
  String get subtotalString => subtotal.toStringAsFixed(2);

  String get deliveryfeeString => deliveryFee(subtotal).toStringAsFixed(2);

  // List<Product> products = [
  //   Product(
  //     name: "Chilli Garlic",
  //     category: "Noodles",
  //     imageUrl:
  //         "https://www.connoisseurusveg.com/wp-content/uploads/2022/12/chili-garlic-noodles-sq.jpg"
  //     // "https://i0.wp.com/passion2cook.com/wp-content/uploads/2023/03/paneer-momos-1.jpg?resize=768%2C1024&ssl=1"
  //     ,
  //     price: 545,
  //     isRecommended: true,
  //   isPopular: true,
  // ),
  // Product(
  //   name: "Afghani Momos",
  //   category: "Momos",
  //   imageUrl:
  //       "https://imgmedia.lbb.in/media/2019/12/5e08cb894bd27a6589daffc4_1577634697453.jpg"
  //   // "https://i0.wp.com/passion2cook.com/wp-content/uploads/2023/03/paneer-momos-1.jpg?resize=768%2C1024&ssl=1"
  //   ,
  //   price: 545,
  //   isRecommended: true,
  //   isPopular: true,
  // ),
  // Product(
  //   name: "Tandori Momos",
  //   category: "Momos",
  // imageUrl:
  //         "https://img-global.cpcdn.com/recipes/aa12bb758db3d83c/1200x630cq70/photo.jpg"

  //     // " 'https://i0.wp.com/passion2cook.com/wp-content/uploads/2023/03/paneer-momos-1.jpg?resize=768%2C1024&ssl=1'"
  //     ,
  //     price: 445,
  //     isRecommended: true,
  //     isPopular: true,
  //   ),
  //   Product(
  //     name: "Kurkure Momos",
  //     category: "Momos",
  //     imageUrl:
  //         "https://i0.wp.com/passion2cook.com/wp-content/uploads/2023/03/paneer-momos-1.jpg?resize=768%2C1024&ssl=1",
  //     price: 945,
  //     isRecommended: true,
  //     isPopular: true,
  //   ),
  // ];

  @override
  List<Object?> get props => [products];
}
