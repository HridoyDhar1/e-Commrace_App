import 'package:ecommeraceapp/features/shop/screens/home_page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sized.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: (const Icon(CupertinoIcons.clear)))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Password Reset Email Sent",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                "Your account security is our priority! We've sent you a secure link to safety change your password and keep your account protected",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: TSized.spaceBtwSection,
              ),
              // Button //
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(const HomePage()),
                    child: const Text("Done")),
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
