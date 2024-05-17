import 'package:ecommeraceapp/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:ecommeraceapp/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sized.dart';

class ForgetEmail extends StatelessWidget {
  const ForgetEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(ForgetPasswordController());
    return Form(
      key: controller.forgetPasswordFormKey,
      child: Column(children: [
        TextFormField(
          controller: controller.email,
          validator: TVaildator.vaildateEmail,
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.user_edit),
            labelText: "User Name",
          ),
        ),
        const SizedBox(
          height: TSized.spaceBtwSection,
        ),
        //  Button //
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => controller.sendPasswordResetEmail(),
              child: Text(
                "Submit",
                style: Theme.of(context).textTheme.bodyLarge,
              )),
        )
      ]),
    );
    // User Name
  }
}
