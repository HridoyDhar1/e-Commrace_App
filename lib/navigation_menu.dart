import 'package:ecommeraceapp/features/personalization/screens/settings/setting_page.dart';
import 'package:ecommeraceapp/features/shop/screens/home_page/home_page.dart';
import 'package:ecommeraceapp/features/shop/screens/store/store_page.dart';
import 'package:ecommeraceapp/features/shop/screens/wistlist/wish_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'utils/constants/color.dart';
import 'utils/helpers/helper_funcation.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NaviagtionController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 50,
            elevation: 0,
            selectedIndex: controller.selectIndex.value,
            onDestinationSelected: (index) =>
                controller.selectIndex.value = index,
            backgroundColor: darkMode ? TColors.black : TColors.white,
            indicatorColor: darkMode
                ? TColors.white.withOpacity(0.2)
                : TColors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "store"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "wishlist"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile")
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectIndex.value]),
    );
  }
}

class NaviagtionController extends GetxController {
  final Rx<int> selectIndex = 0.obs;
  final screens = [
    const HomePage(),
    const StorePage(), const WishList(),
    const SettingPage()

    // const FavourteIteams(),
    // const SettingPage()
  ];
}
