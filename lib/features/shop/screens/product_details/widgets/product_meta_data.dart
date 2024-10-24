import 'package:ecommeraceapp/common/wigets/custom_shape/container/rounded_container.dart';

import 'package:ecommeraceapp/common/wigets/text/product_price_text.dart';
import 'package:ecommeraceapp/common/wigets/text/product_title_text.dart';
import 'package:ecommeraceapp/utils/constants/color.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sized.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and Sale price //
        Row(
          children: [
            // Sale Tag //
            TRoundedContainer(
              radius: TSized.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              Padding: const EdgeInsets.symmetric(
                  horizontal: TSized.sm, vertical: TSized.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(
              width: TSized.spaceBtwItems,
            ),
            // Title //
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSized.spaceBtwItems,
            ),
            const ProductPrice(
              prize: "175",
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          width: TSized.spaceBtwItems / 1,
        ),

        // Title //
        const ProductTitleText(title: "Green Nike Air Shoes"),
        const SizedBox(
          width: TSized.spaceBtwItems / 1,
        ),
        // Stock Status //
        Row(
          children: [
            const ProductTitleText(title: "Status"),
            const SizedBox(
              width: TSized.spaceBtwItems,
            ),
            Text(
              "In Stock ",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          width: TSized.spaceBtwItems,
        ),
        // Brand //
        // Row(
        //   children: [
        //     TCircularImage(
        //       image: TImage.facebook,
        //       width: 30,
        //       height: 30,
        //       overlayColor: darkMode ? TColors.white : TColors.black,
        //     ),
        //     TBrandIcon(
        //       title: "Nike",
        //       brandTextSize: TextSized.medius,
        //     ),
        //   ],
        // )
      ],
    );
  }
}
