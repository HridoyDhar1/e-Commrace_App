// ignore_for_file: unnecessary_import

import 'package:ecommeraceapp/utils/constants/enmu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText(
      {super.key,
      this.color,
      required this.title,
      this.maxLines = 1,
      this.textAlign = TextAlign.center,
      this.brandTextSize = TextSized.small});
  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSized brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      // Check which brandSize is required and set that style //
      style: brandTextSize == TextSized.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSized.medius
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSized.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
