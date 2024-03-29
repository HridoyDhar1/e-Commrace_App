import 'package:ecommeraceapp/common/wigets/login_page/from_divider.dart';
import 'package:ecommeraceapp/common/wigets/login_page/social_button.dart';
import 'package:ecommeraceapp/features/authentication/screens/login_page/wigets/login_form.dart';
import 'package:ecommeraceapp/utils/constants/images.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';

import '../../../../common/styles/speacing_styles.dart';
import '../../../../utils/constants/sized.dart';
import '../../../../utils/constants/text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpaceingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo , Title , SubTitle //
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      height: 100,
                      width: 100,
                      image: AssetImage(
                          dark ? TImage.lightAppLogo : TImage.darkAppLogo)),
                  Text(
                    TTexts.LoginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: TSized.sm,
                  ),
                  Text(
                    TTexts.LoginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  // Login Form //
                  const LoginFrom(),

                  // Divider //
                  FromDivider(dark: dark),
                  // Social Button //
                  const SocialButton()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
