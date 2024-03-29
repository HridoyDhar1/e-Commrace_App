import 'package:ecommeraceapp/utils/constants/images.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../features/authentication/screens/login_page/login_page.dart';
import '../../../features/shop/screens/home_page/home_page.dart';
import '../../../utils/constants/sized.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});
  final String title, subTitle;
  final String image;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginPage()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            children: [
              // Image //
              Image(
                image: const AssetImage(TImage.successfull),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              // Title and SubTitle //
              Text(
                title
                // "Your account successfully created!"
                ,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                subTitle
                // "Welcome to your ultimate shopping destination: Your account is Created,Unleash the joy of Seamless Online Shopping!s"
                ,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: TSized.spaceBtwSection,
              ),
              // Buttons //
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(const HomePage()),
                    child: const Text("Continue")),
              ),
              const SizedBox(
                height: TSized.defaulltSpace,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
