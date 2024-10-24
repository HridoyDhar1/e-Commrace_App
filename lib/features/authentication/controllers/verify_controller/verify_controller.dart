import 'dart:async';

import 'package:ecommeraceapp/common/wigets/success_screen/success_screen.dart';
import 'package:ecommeraceapp/utils/pops/loader_animation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../../data/repositories/authentication/authentication_repositry.dart';
import '../../../../utils/constants/images.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();
  // Send email whenever verify screen appears and set timer for data redirect //
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  // Send email verification link //
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerificaton();
      TLoaders.sucessSnakeBar(
          title: 'Email Sent',
          message: 'Please check your inbox and verify your email');
    } catch (e) {
      TLoaders.errorSnakeBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  // Timer to automatically redirect on email verification //
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccessScreen(
            image: TImage.verify,
            title: "title",
            subTitle: "subTitle",
            onPressed: () =>
                AuthenticationRepository.instance.screenRedirect()));
      }
    });
  }

  // Manually check if email verified //
  checkEmailVerification() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(() => SuccessScreen(
          image: TImage.verify,
          title: "title",
          subTitle: "subTitle",
          onPressed: () => AuthenticationRepository.instance.screenRedirect()));
    }
  }
}
