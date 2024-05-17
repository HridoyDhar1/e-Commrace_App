import 'package:ecommeraceapp/data/repositories/authentication/authentication_repositry.dart';
import 'package:ecommeraceapp/features/personalization/controllers/user_controller.dart';
import 'package:ecommeraceapp/utils/constants/images.dart';
import 'package:ecommeraceapp/utils/pops/fullscreen_loader.dart';
import 'package:ecommeraceapp/utils/pops/loader_animation.dart';
import 'package:ecommeraceapp/utils/pops/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class loginController extends GetxController {
  // Variables //
  final remberMe = false.obs;
  final hidepassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormkey = GlobalKey<FormState>();
  final userController = Get.put(UserController());
  // @override
  // void onInit() {
  //   email.text = localStorage.read("REMEMBER_ME_EMAIL");
  //   password.text = localStorage.read("REMEMBER_ME_PASSWORD");
  // }

  /// Email and Password singin //
  Future<void> emailAndPasswordSingIn() async {
    try {
      // Start loading //
      TFullScreenLoader.openLoadingDialog('Logging you in ..', TImage.verify);
      // Check internet connectivity //
      final isConnected = await NetWorkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      // Form Validation //
      if (!loginFormkey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      // Save data if rember me is selected //
      if (remberMe.value) {
        localStorage.write("REMEMBER_ME_EMAIL", email.text.trim());
        localStorage.write("REMEMBER_ME_PASSWORD", password.text.trim());
      }
      // Login user email & password authentication //
      final userCredentials = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());
      // Remove loader //
      TFullScreenLoader.stopLoading();
      // Redirect //
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnakeBar(title: 'Oh Snap', message: e.toString());
    }
  }

  // Gooogle sing in authentication //
  Future<void> googleSingIn() async {
    try {
      // Start loading //
      TFullScreenLoader.openLoadingDialog('Logging you in...', TImage.verify);
      // check internet connectivity //
      final isConnected = await NetWorkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      //  Google Authentication //
      final userCredential =
          await AuthenticationRepository.instance.signInWithGoogle();
      // Save user record //
      await userController.saveUserRecord(userCredential);
      // Remove loader //
      TFullScreenLoader.stopLoading();
      // Redirect //
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnakeBar(title: "Oh Snap!");
    }
  }
}
