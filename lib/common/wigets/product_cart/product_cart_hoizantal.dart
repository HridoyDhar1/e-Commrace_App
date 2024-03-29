import 'package:ecommeraceapp/common/wigets/custom_shape/container/rounded_container.dart';
import 'package:ecommeraceapp/common/wigets/icons/circular_icon.dart';
import 'package:ecommeraceapp/common/wigets/image/rounded_image.dart';
import 'package:ecommeraceapp/common/wigets/product_cart/verify_icon.dart';
import 'package:ecommeraceapp/common/wigets/text/product_price_text.dart';
import 'package:ecommeraceapp/common/wigets/text/product_title_text.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/constants/sized.dart';

class ProductCartHorizantal extends StatelessWidget {
  const ProductCartHorizantal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 380,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSized.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.lightContainer),
      child: Row(
        children: [
          // Thumbaill //
          TRoundedContainer(
            height: 120,
            Padding: const EdgeInsets.all(TSized.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(
                    imageurl: TImage.verticalTwo,
                    applyimageRadius: true,
                  ),
                ),
                // Sale Tag //
                Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSized.sm,
                      Padding: const EdgeInsets.symmetric(
                          horizontal: TSized.sm, vertical: TSized.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    )),

                // Favourite Icons Button //
                const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ))
              ],
            ),
          ),
          // Details //
          SizedBox(
            width: 180,
            child: Padding(
              padding: const EdgeInsets.only(top: TSized.sm, left: TSized.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: "Green Nike Air Shoes",
                        smallSize: true,
                      ),
                      SizedBox(height: TSized.spaceBtwItems / 2),
                      TBrandIcon(title: "Nike")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pricing //

                      const Flexible(
                          child: ProductPrice(prize: "256.0-25689.0")),
                      // Add to Cart //
                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(TSized.cardRadiusMd),
                                bottomRight: Radius.circular(
                                    TSized.productImageRadius))),
                        child: const SizedBox(
                          width: TSized.iconLg * 1.2,
                          height: TSized.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
