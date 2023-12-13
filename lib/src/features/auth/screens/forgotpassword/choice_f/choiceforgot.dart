import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';

class IconTextGesture extends StatelessWidget {
  final Icon icon;
  final String title, subtitle;
  final VoidCallback onTap;
  const IconTextGesture({
    super.key,
    required this.icon,
    required this.onTap,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).primaryColor,
        ),
        child: Row(
          children: [
            icon,
            SizedBox(
              width: mDefaultSize,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
