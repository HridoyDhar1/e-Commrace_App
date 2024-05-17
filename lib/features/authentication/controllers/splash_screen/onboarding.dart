import 'package:ecommeraceapp/features/authentication/screens/login_page/login_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  // Define currentPageIndex as Rx<int>
  Rx<int> currentPageIndex = 0.obs;

  // Update current index when page scroll //
  void updatePageIndicator(int index) {
    currentPageIndex.value = index; // Assign the value to the .value property
  }

  // Jump to the specific dot selected page //
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController
        .jumpToPage(index); // Jump to the page corresponding to the index
  }

  // Update current index & jump to next page //
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      if (kDebugMode) {
        print("====== GET STORAGE  NEXT BUTTON =======");
        print(storage.read('isFirstTime'));
      }

      storage.write('isFirstTime', false);
      Get.offAll(const LoginPage());
      // Handle what happens when the last page is reached
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index & jump to the last page //
  void skipPage() {
    Get.off(const LoginPage());
    // currentPageIndex.value = 2;
    // pageController.jumpToPage(2);
  }
}
