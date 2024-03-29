import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/constants/sized.dart';
import '../../../utils/helpers/helper_funcation.dart';
import '../image/rounded_image.dart';
import '../product_cart/verify_icon.dart';
import '../text/product_title_text.dart';

class TCartIteams extends StatelessWidget {
  const TCartIteams({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image //
        TRoundedImage(
          imageurl: TImage.verticalTwo,
          heigth: 60,
          width: 60,
          padding: const EdgeInsets.all(TSized.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        const SizedBox(
          width: TSized.spaceBtwItems,
        ),

        // Title , Price ,  Size //
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandIcon(
                title: "Nike",
              ),
              const Flexible(
                child: ProductTitleText(
                  title: "Black Sports Shoes",
                  maxLines: 1,
                ),
              ),

              // Arttibutes //
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Color",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "Green",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "Size", style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "UK 08",
                    style: Theme.of(context).textTheme.bodySmall),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
