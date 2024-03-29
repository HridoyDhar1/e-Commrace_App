import 'package:ecommeraceapp/common/wigets/app_bar/app_bar.dart';

import 'package:ecommeraceapp/features/shop/screens/cart/wigets/cart_iteam.dart';
import 'package:ecommeraceapp/features/shop/screens/checkout/check_out.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sized.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSized.defaulltSpace),
        child: CartIteamsPage(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSized.defaulltSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(const CheckOut()),
            child: const Text("Checkout \$256")),
      ),
    );
  }
}
