// ignore_for_file: unnecessary_import

import 'package:ecommeraceapp/features/authentication/screens/forget_password/widgets/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

    return Form(
      child: Column(children: [
        TextFormField(
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
              onPressed: () {
                Get.to(const ResetPassword());
              },
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
