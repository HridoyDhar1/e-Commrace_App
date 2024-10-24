// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/sized.dart';
import '../../../utils/helpers/helper_funcation.dart';

class TVerticalWidetText extends StatelessWidget {
  const TVerticalWidetText({
    super.key,
    required this.image,
    required this.title,
    required this.textColor,
    required this.onTap,
    this.backgroundColor = TColors.white,
  });

  final String image;
  final String title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSized.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(TSized.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                    image: const AssetImage(""),
                    fit: BoxFit.cover,
                    color: dark ? TColors.light : TColors.dark),
              ),
            ),
            // Text //01867542789
            const SizedBox(
              height: TSized.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 50,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
