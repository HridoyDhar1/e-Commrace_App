import 'package:ecommeraceapp/features/shop/screens/cart/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/wigets/app_bar/app_bar.dart';
import '../../../../../common/wigets/product_cart/product_cart_icon.dart';
import '../../../../../utils/constants/color.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "data",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.black),
          ),
          Text(
            "data",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.black),
          ),
          const THomeAppBar()
        ],
      ),
      actions: [
        TCartCounterIcon(
          onPressed: () => Get.to(const CartPage()),
          IconColor: TColors.white,
        )
      ],
    );
  }
}
