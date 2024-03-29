// ignore_for_file: unnecessary_import

import 'package:ecommeraceapp/features/shop/screens/store/wigets/brand_card.dart';
import 'package:ecommeraceapp/utils/constants/images.dart';
import 'package:ecommeraceapp/utils/constants/sized.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import '../custom_shape/container/rounded_container.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSized.spaceBtwItems),
      child: Column(
        children: [
          const TBrandCard(showBorder: false),
          const SizedBox(
            height: TSized.spaceBtwItems,
          ),
          // Brand tap 3 product images //
          Row(
              children: images
                  .map((image) => brandTOpProductImageWidget(image, context))
                  .toList())
        ],
      ),
    );
  }

  Widget brandTOpProductImageWidget(String image, context) {
    return Expanded(
        child: TRoundedContainer(
      borderColor: TColors.white,
      Padding: const EdgeInsets.all(TSized.md),
      margin: const EdgeInsets.only(right: TSized.sm),
      backgroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkerGrey
          : TColors.light,
      child: const Image(image: AssetImage(TImage.vertical)),
    ));
  }
}
