import 'package:ecommeraceapp/data/repositories/authentication/authentication_repositry.dart';
import 'package:ecommeraceapp/features/authentication/screens/forget_password/widgets/reset_password.dart';
import 'package:ecommeraceapp/utils/constants/images.dart';
import 'package:ecommeraceapp/utils/pops/fullscreen_loader.dart';
import 'package:ecommeraceapp/utils/pops/loader_animation.dart';
import 'package:ecommeraceapp/utils/pops/network_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();
  // Variables //
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();
  // Send reset password email //
  sendPasswordResetEmail() async {
    try {
      // Start loading //
      TFullScreenLoader.openLoadingDialog(
          "Processing your request ....", TImage.verify);
      // check internet  connectivity //
      final isConnected = await NetWorkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      // Form Validation //
      if (!forgetPasswordFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());
      // Remove loader //
      TFullScreenLoader.stopLoading();
      // Show Successs Screen //
      TLoaders.sucessSnakeBar(
          title: 'Email Sent',
          message: "Email link sent to resent your password");
      // Redirect //
      Get.to(() => ResetPassword(
            email: email.text.trim(),
          ));
    } catch (e) {
      // Remove loader //
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnakeBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      // Start loading //
      TFullScreenLoader.openLoadingDialog(
          "Processing your request ....", TImage.verify);
      // check internet  connectivity //
      final isConnected = await NetWorkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
// Send email to reset password //
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);
      // Remove loader //
      TFullScreenLoader.stopLoading();
      // Show Successs Screen //
      TLoaders.sucessSnakeBar(
          title: 'Email Sent',
          message: "Email link sent to resent your password");
    } catch (e) {
      // Remove loader //
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnakeBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
