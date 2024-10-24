import 'package:ecommeraceapp/utils/constants/sized.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../features/shop/screens/store/wigets/brand_card.dart';
import '../../layouts/grid_layouts.dart';

class ShortableProduct extends StatelessWidget {
  const ShortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Heading //
        // DropDown //
        DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
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

        const SizedBox(
          height: TSized.spaceBtwItems,
        ),

        // Brands //
        TGridLayouts(
            iteamCount: 10,
            mainAxisExtent: 80,
            iteamBuilders: (context, index) =>
                const TBrandCard(showBorder: true))
      ],
    );
  }
}
