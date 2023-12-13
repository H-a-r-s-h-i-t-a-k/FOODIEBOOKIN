import 'package:demo/src/constants/colors.dart';
import 'package:flutter/material.dart';

class NamingOfProduct extends StatelessWidget {
  final String name;
  const NamingOfProduct({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 5, left: 0, right: 0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        color: isDark ? mPrimaryColor : Colors.black.withOpacity(0.8),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            name.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
