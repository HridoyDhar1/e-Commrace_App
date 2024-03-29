import 'package:ecommeraceapp/common/wigets/app_bar/app_bar.dart';
import 'package:ecommeraceapp/common/wigets/layouts/grid_layouts.dart';
import 'package:ecommeraceapp/common/wigets/product_cart/product_cart_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sized.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text("Popular Products")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            children: [
              // DropDown //
              DropdownButtonFormField(
                  decoration:
                      const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                  items: [
                    'Name',
                    'Higher Price',
                    "Lower Price",
                    'Sale',
                    'Newest',
                    'Popularity'
                  ]
                      .map((option) =>
                          DropdownMenuItem(value: option, child: Text(option)))
                      .toList(),
                  onChanged: (value) {}),
              const SizedBox(height: TSized.spaceBtwItems),
              // Products //
              TGridLayouts(
                  iteamCount: 4,
                  iteamBuilders: (_, index) => const ProductCartVertical())
            ],
          ),
        ),
      ),
    );
  }
}
