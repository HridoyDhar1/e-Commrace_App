import 'package:ecommeraceapp/features/authentication/screens/address/widgets/add_new.dart';
import 'package:ecommeraceapp/features/personalization/screens/address/widget/single%20_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/wigets/app_bar/app_bar.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sized.dart';

class UserAddress extends StatelessWidget {
  const UserAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(const AddNewAddress()),
        backgroundColor: TColors.primary,
        child: const Icon(
          Iconsax.add,
          color: TColors.white,
        ),
      ),
      // AppBar //
      appBar: TAppBar(
        title: Text(
          "Address",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),

      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSized.spaceBtwItems),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
