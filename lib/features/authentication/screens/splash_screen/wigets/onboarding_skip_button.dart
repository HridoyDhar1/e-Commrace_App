import 'package:flutter/material.dart';

import '../../../../../utils/constants/sized.dart';
import '../../../../../utils/device/device_utillity.dart';
import '../../../controllers/splash_screen/onboarding.dart';

class OnBoardingPageSkip extends StatelessWidget {
  const OnBoardingPageSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSized.defaulltSpace,
      top: TDeviceUtils.getAppBarHeight(),
      child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text("Skip")),
    );
  }
}
