import 'package:ecommeraceapp/common/wigets/app_bar/app_bar.dart';
import 'package:ecommeraceapp/features/personalization/controllers/updat_name_controller.dart';
import 'package:ecommeraceapp/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sized.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      // Custom AppBar //
      appBar: TAppBar(
        title: Text(
          "Change Name",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSized.defaulltSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading ///
            Text(
              "Use real name for easy verificition.This name will appear onseveral pages.",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: TSized.spaceBtwItems,
            ),
            Form(
                key: controller.updateUserNameFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.firstName,
                      validator: (value) =>
                          TVaildator.validateEmptyText("First Name", value),
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: "First Name",
                          prefixIcon: Icon(Iconsax.user)),
                    ),
                    const SizedBox(
                      height: TSized.spaceBtwItems,
                    ),
                    TextFormField(
                      controller: controller.lastName,
                      validator: (value) =>
                          TVaildator.validateEmptyText("Last Name", value),
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: "Last Name",
                          prefixIcon: Icon(Iconsax.user)),
                    ),
                    const SizedBox(
                      height: TSized.spaceBtwItems,
                    ),
                    // Save Button //
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => controller.updateUserName,
                          child: const Text("Save")),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
