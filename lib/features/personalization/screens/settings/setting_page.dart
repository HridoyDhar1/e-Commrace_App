// ignore_for_file: unnecessary_import

import 'package:ecommeraceapp/features/authentication/screens/login_page/login_page.dart';
import 'package:ecommeraceapp/features/personalization/controllers/user_controller.dart';
import 'package:ecommeraceapp/features/personalization/screens/address/user_address.dart';
import 'package:ecommeraceapp/features/personalization/screens/profile/profile_page.dart';
import 'package:ecommeraceapp/features/shop/screens/all_products/all_products.dart';
import 'package:ecommeraceapp/features/shop/screens/order/order_page.dart';
import 'package:ecommeraceapp/features/shop/screens/sub_categori/sub_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/wigets/app_bar/app_bar.dart';
import '../../../../common/wigets/custom_shape/custom_curved.dart';
import '../../../../common/wigets/image/circle_image.dart';
import '../../../../common/wigets/list_titles/list_titles.dart';
import '../../../../common/wigets/text/section_heading.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sized.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
// Header //
          const TprimaryHeaderCurved(
              child: Column(
            children: [
              TAppBar(
                title: Text("Account"),
              ),
              // User Profiel //
              TUserProfieTitle(),
              SizedBox(
                height: TSized.spaceBtwItems,
              )
            ],
          )),
          // Body //
          Padding(
            padding: const EdgeInsets.all(TSized.defaulltSpace),
            child: Column(
              children: [
                // Account Information //
                const TSectionHeading(
                  title: "Account Setting",
                ),
                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
                TSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subTitle: "Set delivery addess",
                    onTap: () => Get.to(const UserAddress())
                    // {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => ProductRating()));
                    // },
                    ),
                TSettingMenuTile(
                  icon: Iconsax.shopping_cart,
                  title: "My Cart",
                  subTitle: "Add , remove products and move to the checkout",
                  onTap: () => Get.to(const ProfilePage()),
                ),
                TSettingMenuTile(
                  icon: Iconsax.bag_tick,
                  title: "My Orders",
                  subTitle: "In-Progress and Completed Orders",
                  onTap: () => Get.to(const OrderPage()),
                ),
                TSettingMenuTile(
                  icon: Iconsax.bank,
                  title: "Bank Account",
                  subTitle: "Withdraw balance to registered bank account",
                  onTap: () => Get.to(const SubCategories()),
                ),
                TSettingMenuTile(
                  icon: Iconsax.discount_shape,
                  title: "My Coupons",
                  subTitle: "List of all the discounted coupons",
                  onTap: () => Get.to(const AllProducts()),
                ),
                TSettingMenuTile(
                  icon: Iconsax.notification,
                  title: "Notification",
                  subTitle: "Set any kind of notification message",
                  onTap: () {},
                ),
                TSettingMenuTile(
                  icon: Iconsax.security_card,
                  title: "Notification Privacy",
                  subTitle: "Manage data usage and connected accounts",
                  onTap: () {},
                ),
                // App Settings //
                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
                const TSectionHeading(
                  title: "App Settings",
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
                const TSettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: "Load Data",
                    subTitle: "Upload Data to your Firebase"),
                const TSettingMenuTile(
                    icon: Iconsax.location,
                    title: "GeoLoaction",
                    subTitle: "Set recommendation based on loaction"),
                const TSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all ages"),
                const TSettingMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subTitle: "Set image quality to be seen "),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Get.offAll(LoginPage()),
            child: Container(
              height: 20,
              width: 300,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Center(
                child: Text(
                  "LogOut",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class TUserProfieTitle extends StatelessWidget {
  const TUserProfieTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return ListTile(
      leading: const TCircularImage(
          image: TImage.TImages1, width: 50, height: 50, padding: 0),
      title: Text(
        controller.user.value.fullName,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        controller.user.value.email,
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Iconsax.edit,
          color: TColors.white,
        ),
      ),
    );
  }
}
