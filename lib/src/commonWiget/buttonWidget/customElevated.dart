import 'package:demo/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;

  CustomBotton(
      {super.key, this.color, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: color == null ? dColorScheme.primaryContainer : color,
        // style: ElevatedButton.styleFrom(
        shadowColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 14,
        foregroundColor: dColorScheme.onPrimaryContainer,
        // backgroundCsolor: Theme.of(context).disabledColor,
        surfaceTintColor: Color.fromARGB(255, 23, 2, 2),
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(19)),
        ),
      ),
      icon: Icon(
        CupertinoIcons.arrow_right,
        color: Theme.of(context).iconTheme.color,
      ),
      label: Text(
        text,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontSize: 16,
            ),
      ),
    );
  }
}
