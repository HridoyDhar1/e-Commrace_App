import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sized.dart';
import '../../../../utils/device/device_utillity.dart';
import '../../../../utils/helpers/helper_funcation.dart';

class TSearchWidget extends StatelessWidget {
  const TSearchWidget(
      {super.key,
      required this.text,
      this.icon = Iconsax.search_normal,
      this.showBackground = true,
      this.showBorder = true,
      this.padding =
          const EdgeInsets.symmetric(horizontal: TSized.defaulltSpace),
      this.onTap});
  final String text;
  final IconData? icon;
  final EdgeInsetsGeometry padding;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(),
          padding: const EdgeInsets.all(TSized.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? TColors.white
                      : TColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(TSized.cardRadiusLg),
              border: showBorder ? Border.all(color: TColors.grey) : null),
          child: Row(children: [
            Icon(icon, color: TColors.darkerGrey),
            const SizedBox(
              width: TSized.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ]),
        ),
      ),
    );
  }
}
