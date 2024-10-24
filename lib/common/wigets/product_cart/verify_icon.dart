import 'package:ecommeraceapp/common/wigets/text/brand_title.dart';
import 'package:ecommeraceapp/utils/constants/color.dart';
import 'package:ecommeraceapp/utils/constants/enmu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sized.dart';

class TBrandIcon extends StatelessWidget {
  const TBrandIcon({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSized.small,
  });
  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSized brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: TBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxlines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        )),
        const SizedBox(
          height: TSized.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: TColors.primary,
          size: TSized.iconxs,
        )
      ],
    );
  }
}
