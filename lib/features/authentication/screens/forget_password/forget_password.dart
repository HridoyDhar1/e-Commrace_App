import 'package:flutter/material.dart';

import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sized.dart';
import '../../../../utils/helpers/helper_funcation.dart';
import 'widgets/forget_email.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: const AssetImage(TImage.forgetimage),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              // Title
              Text(
                ("Forget Password"),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                ("Don't worry sometimes peoples can forget too,enter your email and we will send your a password reset link."),
                style: Theme.of(context).textTheme.bodySmall,
              ),

              const SizedBox(
                height: TSized.spaceBtwSection,
              ),
              // Form
              const ForgetEmail(),
            ],
          ),
        ),
      ),
    );
  }
}
