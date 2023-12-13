import 'package:demo/src/features/home/screen/category/categoryscreen.dart';
import 'package:demo/src/features/home/screen/category/model/hcategory.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class ImagCategory extends StatelessWidget {
  final Category category;

  ImagCategory({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => CatalogScreen(
              category: category.name,
            ));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(category.imageUrl,
                    fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  top: 0,
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.center,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 1.0, horizontal: 20.0),
                    child: Text(category.name,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.white)),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
