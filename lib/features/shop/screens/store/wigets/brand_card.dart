// ignore_for_file: unnecessary_import

import 'package:ecommeraceapp/common/wigets/image/circle_image.dart';
import 'package:ecommeraceapp/common/wigets/text/brand_title.dart';
import 'package:ecommeraceapp/utils/constants/color.dart';
import 'package:ecommeraceapp/utils/constants/enmu.dart';
import 'package:ecommeraceapp/utils/constants/sized.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/wigets/custom_shape/container/rounded_container.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/helpers/helper_funcation.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({super.key, required this.showBorder, this.onTap});
  final bool showBorder;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        Padding: const EdgeInsets.all(TSized.sm),
        borderColor: TColors.black,
        backgroundColor: Colors.transparent,
        showBorder: showBorder,
        child: Row(
          children: [
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                overlayColor: THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.black,
                image: TImage.brandLogo,
              ),
            ),
            const SizedBox(width: TSized.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const TBrandTitleText(
                    title: "Nike",
                    brandTextSize: TextSized.large,
                  ),
                  Text(
                    "256 products ",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
