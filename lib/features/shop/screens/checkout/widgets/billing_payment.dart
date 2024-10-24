import 'package:ecommeraceapp/common/wigets/custom_shape/container/rounded_container.dart';
import 'package:ecommeraceapp/common/wigets/text/section_heading.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sized.dart';

class BillingInPayment extends StatelessWidget {
  const BillingInPayment({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        const SizedBox(
          height: TSized.spaceBtwItems / 2,
        ),
        Row(
          children: [
            TRoundedContainer(
              width: 50,
              height: 50,
              backgroundColor: dark ? TColors.light : TColors.white,
              Padding: const EdgeInsets.all(TSized.sm),
              child: const Image(
                image: AssetImage(TImage.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: TSized.spaceBtwItems / 2,
            ),
            Text(
              "PayPal",
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        )
      ],
    );
  }
}
