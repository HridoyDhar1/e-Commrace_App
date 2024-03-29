import 'package:ecommeraceapp/common/wigets/brand/brand_show_case.dart';
import 'package:ecommeraceapp/common/wigets/layouts/grid_layouts.dart';
import 'package:ecommeraceapp/common/wigets/product_cart/product_cart_vertical.dart';
import 'package:ecommeraceapp/common/wigets/text/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sized.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSized.defaulltSpace),
            child: Column(
              children: [
                // Brands //
                const TBrandShowCase(images: [
                  TImage.vertical,
                  TImage.verticalOne,
                  TImage.verticalTwo
                ]),

                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
                // Products //
                TSectionHeading(
                  title: "You migth like",
                  showActionButton: true,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
                TGridLayouts(
                    iteamCount: 4,
                    iteamBuilders: (_, index) => const ProductCartVertical()),
                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
              ],
            ),
          ),
        ]);
  }
}
