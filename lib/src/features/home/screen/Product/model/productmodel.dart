import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name, category, imageUrl;
  final double price;
  final bool isRecommended, isPopular;

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isPopular,
        isRecommended,
      ];

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  static List<Product> products = [
    Product(
      name: "Chilli Garlic",
      category: "Noodles",
      imageUrl:
          "https://www.connoisseurusveg.com/wp-content/uploads/2022/12/chili-garlic-noodles-sq.jpg"
      // "https://i0.wp.com/passion2cook.com/wp-content/uploads/2023/03/paneer-momos-1.jpg?resize=768%2C1024&ssl=1"
      ,
      price: 545,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Afghani Momos",
      category: "Momos",
      imageUrl:
          "https://imgmedia.lbb.in/media/2019/12/5e08cb894bd27a6589daffc4_1577634697453.jpg"
      // "https://i0.wp.com/passion2cook.com/wp-content/uploads/2023/03/paneer-momos-1.jpg?resize=768%2C1024&ssl=1"
      ,
      price: 545,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Tandori Momos",
      category: "Momos",
      imageUrl:
          "https://img-global.cpcdn.com/recipes/aa12bb758db3d83c/1200x630cq70/photo.jpg"

      // " 'https://i0.wp.com/passion2cook.com/wp-content/uploads/2023/03/paneer-momos-1.jpg?resize=768%2C1024&ssl=1'"
      ,
      price: 445,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Kurkure Momos",
      category: "Momos",
      imageUrl:
          "https://i0.wp.com/passion2cook.com/wp-content/uploads/2023/03/paneer-momos-1.jpg?resize=768%2C1024&ssl=1",
      price: 945,
      isRecommended: true,
      isPopular: true,
    ),
  ];
}
