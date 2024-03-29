import 'package:ecommeraceapp/common/wigets/icons/circular_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/sized.dart';
import '../../../utils/helpers/helper_funcation.dart';

class ProductAddRemoveButton extends StatelessWidget {
  const ProductAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          height: 30,
          width: 30,
          size: TSized.md,
          color: THelperFunctions.isDarkMode(context)
              ? TColors.white
              : TColors.black,
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkGrey
              : TColors.light,
        ),
        const SizedBox(
          height: TSized.spaceBtwItems,
        ),
        Text(
          "2",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: TSized.spaceBtwItems,
        ),
        const TCircularIcon(
          icon: Iconsax.add,
          height: 30,
          width: 30,
          size: TSized.md,
          color: TColors.white,
          backgroundColor: TColors.primary,
        ),
      ],
    );
  }
}
