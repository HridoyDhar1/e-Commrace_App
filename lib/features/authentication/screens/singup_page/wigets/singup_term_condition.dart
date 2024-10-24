// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/color.dart';
import '../../../controllers/singup_screen/singup_controller.dart';

class SingUpTermAndConditaion extends StatelessWidget {
  const SingUpTermAndConditaion({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = SingUpController.instance;
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.value =
                  !controller.privacyPolicy.value,
            ),
          ),
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: "I agree to ",
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: ("Privacy Policy"),
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary)),
            TextSpan(text: 'and', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: ("Terms of Use"),
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary)),
          ]),
        ),
      ],
    );
  }
}
