import 'package:ecommeraceapp/common/wigets/custom_shape/container/rounded_container.dart';
import 'package:ecommeraceapp/common/wigets/success_screen/success_screen.dart';
import 'package:ecommeraceapp/features/shop/screens/cart/wigets/cart_iteam.dart';
import 'package:ecommeraceapp/features/shop/screens/checkout/widgets/biling_information.dart';
import 'package:ecommeraceapp/features/shop/screens/checkout/widgets/billing_amount.dart';
import 'package:ecommeraceapp/navigation_menu.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/wigets/app_bar/app_bar.dart';
import '../../../../common/wigets/cart/cupon_widget.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sized.dart';
import 'widgets/billing_payment.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: TAppBar(
          title: Text(
            "Order Review",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSized.defaulltSpace),
            child: Column(
              children: [
                // Iteam in Cart //
                const CartIteamsPage(
                  addRemoveButtons: false,
                ),
                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
                // Cupon textField //
                const TCuponCode(),
                const SizedBox(
                  height: TSized.spaceBtwSection,
                ),
                TRoundedContainer(
                  Padding: const EdgeInsets.all(TSized.md),
                  showBorder: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  child: const Column(
                    children: [
                      // Pricing //
                      BillingAmount(),
                      SizedBox(
                        height: TSized.spaceBtwSection,
                      ),
                      // Divider //
                      Divider(),
                      SizedBox(
                        height: TSized.spaceBtwSection,
                      ),
                      // Payment Method //
                      SizedBox(
                        height: TSized.spaceBtwSection,
                      ),
                      BillingInPayment(),
                      SizedBox(
                        height: TSized.spaceBtwSection,
                      ),
                      BillingAddress()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: ElevatedButton(
            onPressed: () => Get.to(
              SuccessScreen(
                image: TImage.paymentsuccessful,
                title: "Payment Success!",
                subTitle: "Your iteam will be shipped soon!",
                onPressed: () => Get.offAll(const NavigationMenu()),
              ),
            ),
            child: const Text("Checkout \$256.0"),
          ),
        ));
  }
}
