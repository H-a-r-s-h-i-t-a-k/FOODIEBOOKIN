import 'package:demo/src/constants/image_str.dart';
import 'package:demo/src/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../constants/text_str.dart';

class HeaderForm extends StatelessWidget {
  final String img, title, subtitle;
  final Size size;
  final double mheight;
  final CrossAxisAlignment mcrossAxisAlignment;
  final TextAlign mtextAlign;
  HeaderForm({
    super.key,
    required this.size,
    required this.img,
    required this.title,
    required this.subtitle,
    this.mheight = 0.18,
    this.mtextAlign = TextAlign.start,
    this.mcrossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: mcrossAxisAlignment,
      children: [
        Image(
          image: AssetImage(img),
          height: size.height * mheight,
        ),
        Text(
          title,
          // textScaleFactor: 1.2,
          textAlign: mtextAlign,
          textWidthBasis: TextWidthBasis.longestLine,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: mDefaultSize - 22,
        ),
        Text(subtitle,
            textAlign: mtextAlign,
            style: Theme.of(context).textTheme.labelMedium),
        SizedBox(
          height: mDefaultSize,
        )
      ],
    );
  }
}
