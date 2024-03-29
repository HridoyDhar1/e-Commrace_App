import 'package:ecommeraceapp/common/styles/shadows.dart';
import 'package:ecommeraceapp/common/wigets/custom_shape/container/rounded_container.dart';
import 'package:ecommeraceapp/common/wigets/icons/circular_icon.dart';
import 'package:ecommeraceapp/common/wigets/image/rounded_image.dart';
import 'package:ecommeraceapp/common/wigets/product_cart/verify_icon.dart';
import 'package:ecommeraceapp/common/wigets/text/product_price_text.dart';
import 'package:ecommeraceapp/common/wigets/text/product_title_text.dart';
import 'package:ecommeraceapp/features/shop/screens/product_details/product_details.dart';
import 'package:ecommeraceapp/utils/constants/color.dart';
import 'package:ecommeraceapp/utils/constants/images.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sized.dart';

class ProductCartVertical extends StatelessWidget {
  const ProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.veriticalProductShadow],
            borderRadius: BorderRadius.circular(TSized.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.white),
        child: Column(
          children: [
            // Thumbail ,Wishlist,Discount //
            TRoundedContainer(
              height: 180,
              Padding: const EdgeInsets.all(TSized.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const TRoundedImage(
                    imageurl: TImage.verticalTwo,
                    applyimageRadius: true,
                  ),
                  // Sale Tag //
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSized.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      Padding: const EdgeInsets.symmetric(
                          horizontal: TSized.sm, vertical: TSized.xs),
                      child: Text(
                        "25 %",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  // Favourite Icon button //
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),

            // Details //
            const Padding(
              padding: EdgeInsets.only(left: TSized.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "Nike Air Shoes ",
                    smallSize: true,
                  ),
                  SizedBox(
                    height: TSized.spaceBtwItems / 2,
                  ),
                  TBrandIcon(title: "Nike")

                  // Price Row //
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price //
                const Padding(
                  padding: EdgeInsets.only(left: TSized.sm),
                  child: ProductPrice(
                    prize: "35.6",
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSized.cardRadiusMd),
                          bottomRight: Radius.circular(50))),
                  child: const SizedBox(
                    width: TSized.iconLg,
                    height: TSized.iconLg,
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
    );
  }
}
