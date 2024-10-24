// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sized.dart';
import '../../../../../utils/device/device_utillity.dart';
import '../../../../../utils/helpers/helper_funcation.dart';
import '../../../controllers/splash_screen/onboarding.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        right: TSized.defaulltSpace,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? TColors.primary : Colors.black),
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: const Icon(Iconsax.arrow_right)));
  }
}
