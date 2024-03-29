import 'package:ecommeraceapp/common/wigets/app_bar/app_bar.dart';
import 'package:ecommeraceapp/common/wigets/layouts/grid_layouts.dart';
import 'package:ecommeraceapp/features/shop/screens/brands/brand_product.dart';
import 'package:ecommeraceapp/features/shop/screens/store/store_section.dart';
import 'package:ecommeraceapp/features/shop/screens/store/wigets/brand_card.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sized.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Brand"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            children: [
              // Heading //
              const TSectionHeading(
                title: "Brands",
                showActionButton: false,
              ),
              const SizedBox(
                height: TSized.spaceBtwItems,
              ),

              // Brands //
              TGridLayouts(
                iteamCount: 10,
                mainAxisExtent: 80,
                iteamBuilders: (context, index) => TBrandCard(
                  showBorder: true,
                  onTap: (() => const BrandProduct()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
