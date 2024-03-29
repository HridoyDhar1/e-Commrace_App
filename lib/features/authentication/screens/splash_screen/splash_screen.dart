import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/text.dart';
import '../../controllers/splash_screen/splash_screen.dart';
import 'wigets/onboarding_next_button.dart';
import 'wigets/onboarding_page.dart';
import 'wigets/onboarding_page_navigator.dart';
import 'wigets/onboarding_skip_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(children: [
        // Horizantal scrollabe page //

        PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardinPageWidget(
                image: TImage.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardinPageWidget(
                image: TImage.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardinPageWidget(
                image: TImage.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ]),
        // Skip Button //
        const OnBoardingPageSkip(),
        // Dot Smooth page navigator //
        const OnBoardingNavigation(),

        // Circle Button //
        const onBoardingNextButton()
      ]),
    );
  }
}
