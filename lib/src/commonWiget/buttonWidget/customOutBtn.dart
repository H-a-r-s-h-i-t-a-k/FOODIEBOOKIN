import 'package:demo/main.dart';
import 'package:flutter/material.dart';

class Customoutlinebtn extends StatelessWidget {
  final String txt;
  final VoidCallback onTap;
  final Color? color;
  Customoutlinebtn(
      {super.key, required this.txt, required this.onTap, this.color});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      child: Text(txt, style: Theme.of(context).textTheme.labelMedium),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(19)),
        ),
      ),
    );
  }
}
