import 'package:ecommeraceapp/data/repositories/user/user_repository.dart';
import 'package:ecommeraceapp/features/personalization/models/user_model.dart';
import 'package:ecommeraceapp/utils/pops/loader_animation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final profileLoading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;
  final userRepository = Get.put(UserRepository());
  @override
  void onInt() {
    super.onInit();
    fetchUserRecord();
  }

// Fetch user record //
  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;

      final user = await userRepository.fetchUserDetails();
      this.user(user);
      profileLoading.value = false;
    } catch (e) {
      user(UserModel.empty());
    } finally {
      profileLoading.value = false;
    }
  }

  // Save user record from any registation provider //
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        // Convert  name to first and last name //
        final nameParts =
            UserModel.nameParts(userCredentials.user!.displayName ?? '');
        final username =
            UserModel.generateUserName(userCredentials.user!.displayName ?? '');
        // Map Data /
        final user = UserModel(
            id: userCredentials.user!.uid,
            email: userCredentials.user!.email ?? '',
            firstName: nameParts[0],
            lastName: nameParts.length > 1 ? nameParts.sublist(1).join('') : '',
            profilePicture: userCredentials.user!.photoURL ?? '',
            userName: username,
            phoneNumber: userCredentials.user!.phoneNumber ?? '');
        // Save user data //
        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      TLoaders.warningSnakeBar(
          title: "Data not saved",
          message:
              "Something went wrong while saving your information.You can re-save your data in your profile");
    }
  }
}
