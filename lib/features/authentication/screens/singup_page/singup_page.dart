import 'package:ecommeraceapp/features/authentication/screens/singup_page/wigets/singup_from.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';

import '../../../../common/wigets/login_page/from_divider.dart';
import '../../../../common/wigets/login_page/social_button.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sized.dart';
import '../../../../utils/constants/text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                  height: 100,
                  width: 100,
                  image: AssetImage(
                      dark ? TImage.lightAppLogo : TImage.darkAppLogo)),
              const SizedBox(
                height: TSized.spaceBtwSection,
              ),
              // Title
              Text(
                TTexts.SingupText,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSized.spaceBtwSection,
              ),

              // Form
              const SingUpFormWiget(),
              const SizedBox(
                height: TSized.spaceBtwSection,
              ),
              // Divider //
              FromDivider(dark: dark),
              const SizedBox(
                height: TSized.spaceBtwSection,
              ),
              // Social Button //
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
