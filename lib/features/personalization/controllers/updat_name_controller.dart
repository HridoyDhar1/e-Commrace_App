import 'package:ecommeraceapp/data/repositories/user/user_repository.dart';
import 'package:ecommeraceapp/features/personalization/controllers/user_controller.dart';
import 'package:ecommeraceapp/features/personalization/screens/profile/profile_page.dart';
import 'package:ecommeraceapp/utils/constants/images.dart';
import 'package:ecommeraceapp/utils/pops/fullscreen_loader.dart';
import 'package:ecommeraceapp/utils/pops/loader_animation.dart';
import 'package:ecommeraceapp/utils/pops/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userContoller = UserController.instance;
  final userReopository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();
  // inti user data when home screen appears //
  @override
  void onInit() {
    initializeName();
    super.onInit();
  }

// Fetch user record //
  Future<void> initializeName() async {
    firstName.text = userContoller.user.value.firstName;
    lastName.text = userContoller.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      // Start Loading//
      TFullScreenLoader.openLoadingDialog(
          "We are updating your information", TImage.TSuccessImage);
      // Check internet Connectivity //
      final isConnected = await NetWorkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form validation //
      if (!updateUserNameFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      // Update user's first & last name is the firebase firestore //
      Map<String, dynamic> name = {
        "First Name ": firstName.text.trim(),
        'LastName ': lastName.text.trim()
      };
      await userReopository.updateSingleField(name);
      // Update the Rx user value //
      userContoller.user.value.firstName = firstName.text.trim();
      userContoller.user.value.lastName = lastName.text.trim();
      // Remove Loader //
      TFullScreenLoader.stopLoading();

      /// Show Success Message //
      TLoaders.sucessSnakeBar(
          title: "Congratulations", message: "Your name has been updated.");
      // Move to previous screen //
      Get.offAll(() => const ProfilePage());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.warningSnakeBar(title: "Oh, Snap! ", message: e.toString());
    }
  }
}
