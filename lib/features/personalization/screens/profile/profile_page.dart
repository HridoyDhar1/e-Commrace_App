import 'package:ecommeraceapp/common/wigets/app_bar/app_bar.dart';
import 'package:ecommeraceapp/common/wigets/image/circle_image.dart';
import 'package:ecommeraceapp/common/wigets/text/section_heading.dart';
import 'package:ecommeraceapp/features/personalization/controllers/user_controller.dart';
import 'package:ecommeraceapp/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:ecommeraceapp/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sized.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const TAppBar(
        sowBackArrow: true,
        title: Text("Profile"),
      ),
      // Body //
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            children: [
              // Profile Picture //
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImage.facebook,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Picture")),
                    // Details //
                    const SizedBox(
                      height: TSized.spaceBtwItems / 2,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: TSized.spaceBtwItems,
                    ),
                    const TSectionHeading(
                      title: "Profile Information",
                      showActionButton: false,
                    ),
                    const SizedBox(
                      height: TSized.spaceBtwItems,
                    ),

                    ProfileMenu(
                      title: "Name",
                      value: controller.user.value.fullName,
                      onPressed: () => Get.to(() => const ChangeName()),
                    ),
                    ProfileMenu(
                      title: "Username",
                      value: controller.user.value.userName,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: TSized.spaceBtwItems,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: TSized.spaceBtwItems,
                    ),
                    ProfileMenu(
                      title: "User ID",
                      value: controller.user.value.id,
                      icon: Iconsax.copy,
                      onPressed: () {},
                    ),
                    ProfileMenu(
                      title: "E-mail",
                      value: controller.user.value.email,
                      onPressed: () {},
                    ),
                    ProfileMenu(
                      title: "Phone Number",
                      value: controller.user.value.phoneNumber,
                      onPressed: () {},
                    ),
                    ProfileMenu(
                      title: "Date of Birth",
                      value: "10 aug, 2000",
                      onPressed: () {},
                    ),
                    ProfileMenu(
                      title: "Gender ",
                      value: "Male",
                      onPressed: () {},
                    ),
                    const Divider(),
                    const SizedBox(
                      height: TSized.spaceBtwItems,
                    ),
                    Center(
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Close Account",
                            style: TextStyle(color: Colors.red),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



// git remote add origin https://github.com/HridoyDhar/eCommerce_app.git
// git branch -M main
// git push -u origin main