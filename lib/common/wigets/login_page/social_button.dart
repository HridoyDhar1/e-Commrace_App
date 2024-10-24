import 'package:ecommeraceapp/features/authentication/controllers/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/constants/sized.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(loginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () => controller.googleSingIn(),
              icon: const Image(
                  height: TSized.iconMd,
                  width: TSized.iconMd,
                  image: AssetImage(TImage.google))),
        ),
        const SizedBox(
          width: TSized.sm,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  height: TSized.iconMd,
                  width: TSized.iconMd,
                  image: AssetImage(TImage.facebook))),
        )
      ],
    );
  }
}
