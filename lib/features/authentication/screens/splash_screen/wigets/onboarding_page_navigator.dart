import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sized.dart';
import '../../../../../utils/device/device_utillity.dart';
import '../../../../../utils/helpers/helper_funcation.dart';
import '../../../controllers/splash_screen/splash_screen.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      left: TSized.defaulltSpace,
      child: SmoothPageIndicator(
        controller: PageController(),
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.dark),
      ),
    );
  }
}
