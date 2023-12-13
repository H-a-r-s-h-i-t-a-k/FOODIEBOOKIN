import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;
  const Category({
    required this.imageUrl,
    required this.name,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: "Momos",
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/phonenoproject.appspot.com/o/category%2FmomosT.png?alt=media&token=b34ffcd3-f47c-4c88-93e5-ef096c7fbe84'
        // 'https://img-global.cpcdn.com/recipes/aa12bb758db3d83c/1200x630cq70/photo.jpg'
        // 'https://i0.wp.com/passion2cook.com/wp-content/uploads/2023/03/paneer-momos-1.jpg?resize=768%2C1024&ssl=1',
        ),
    Category(
        name: "Noodles",
        imageUrl:
            'https://sweetcaramelsunday.com/wp-content/uploads/Soy-Sauce-Noodles-610.jpg'),
    Category(
        name: "Combo",
        imageUrl:
            'https://www.mystore.in/s/62ea2c599d1398fa16dbae0a/64e04a9815a84dd25d6050b3/j_3qzv6cgcjxbkc2_y1hqgs53c6dkbqwp7fuirroym6eqfpvbe4dasbjtyabdgl0qo0wlghum3xqwed8oj9zk_ic87thqevvh1bggev1ta.jpg'),
  ];
}
