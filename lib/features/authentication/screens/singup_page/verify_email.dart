import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/wigets/success_screen/success_screen.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sized.dart';
import '../../../../utils/helpers/helper_funcation.dart';
import '../login_page/login_page.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () => Get.offAll(() => const LoginPage()),
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
                "support@gmail.com",
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
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: TImage.TSuccessImage,
                          title: "Your account successfully created!",
                          subTitle:
                              "Welcome to your ultimate shopping destination: Your account is Created,Unleash the joy of Seamless Online Shopping!s",
                          onPressed: () => Get.to(() => const LoginPage()),
                        )),
                    child: const Text("Continue")),
              ),
              const SizedBox(
                height: TSized.spaceBtwSection,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text("Resend Email")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
