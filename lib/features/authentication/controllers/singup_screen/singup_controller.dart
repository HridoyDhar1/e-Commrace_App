// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/images.dart';
import '../../../../utils/pops/fullscreen_loader.dart';
import '../../../../utils/pops/loader_animation.dart';
import '../../../../utils/pops/network_manager.dart';

class SingUpController extends GetxController {
  static SingUpController get instance => Get.find();
  // Variables //
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> singupFormkey = GlobalKey<FormState>();
  void singUp() async {
    try {
      // Start loading //

      TFullScreenLoader.openLoadingDialog(
          "We are processing your animation", TImage.TImages);
      // check internet connectivity //
      final isConnected = await NetWorkManager.instance.isConnected();
      if (!isConnected) return;

      // Form Vailidation //
      if (!singupFormkey.currentState!.validate()) return;

      // Privacy Policy Check //
      if (privacyPolicy.value) {
        TLoaders.warningSnakeBar(
            title: "Accepts Privacy Policy",
            message:
                "In order to create account,  you must have to read and accept the privacy policy");
        return;
      }
      // Register usern the firebase authentication and save user datea in the firebase //

      // final UserCredential = await AuthenticationRepository.instance
      //     .registerWithEmailAndPassword(
      //         email.text.trim(), password.text.trim());

      // Save Authenticated user data in the firebase firestore //
      // final newUser = UserModel(
      //     id: UserCredential.user!.uid,
      //     email: email.text.trim(),
      //     firstName: firstName.text.trim(),
      //     lastName: lastName.text.trim(),
      //     profilePicture: '',
      //     userName: userName.text.trim(),
      //     phoneNumber: phoneNumber.text.trim());
      // final userRepository = Get.put(UserRepository());
      // await userRepository.saveUserRecord(newUser);
      // // Remove loader //
      // TFullScreenLoader.stopLoading();
      // // Show Success Message //
      // TLoaders.sucessSnakeBar(
      //     title: "Congratulations",
      //     message: "Your account has been created! Verify email to continue");
      // // Move to verify the email screeen //
      // Get.to(() => const VerifyEmail());
    } catch (e) {
      TLoaders.errorSnakeBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}
