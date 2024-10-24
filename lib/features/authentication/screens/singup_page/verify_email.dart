import 'package:ecommeraceapp/data/repositories/authentication/authentication_repositry.dart';
import 'package:ecommeraceapp/features/authentication/controllers/verify_controller/verify_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sized.dart';
import '../../../../utils/helpers/helper_funcation.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key, this.email});
  final String? email;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());

    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () =>
                Get.offAll(() => AuthenticationRepository.instance.logOut()),
            icon: const Icon(CupertinoIcons.clear))
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            children: [
              // Image //
              Image(
                image: const AssetImage(TImage.verify),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              // Title And SubTitle //
              Text(
                "Verify your email",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSized.spaceBtwItems,
              ),
              Text(
                email ?? '',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: TSized.spaceBtwItems,
              ),
              Text(
                "Congratulation! your account awaits: Verify your email to start shopping and experience a world of unrivated deals and personalized offers.",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSized.spaceBtwSection,
              ),
              // Elevated Button //
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.checkEmailVerification(),
                    child: const Text("Continue")),
              ),
              const SizedBox(
                height: TSized.spaceBtwSection,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () => controller.sendEmailVerification(),
                    child: const Text("Resend Email")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
