import 'package:ecommeraceapp/common/wigets/layouts/grid_layouts.dart';
import 'package:ecommeraceapp/features/shop/screens/home_page/search_bar.dart';
import 'package:ecommeraceapp/features/shop/screens/home_page/widgets/promo_slider.dart';
import 'package:ecommeraceapp/features/shop/screens/store/store_section.dart';
import 'package:ecommeraceapp/utils/constants/images.dart';
import 'package:flutter/material.dart';

import '../../../../common/wigets/custom_shape/custom_curved.dart';
import '../../../../common/wigets/product_cart/product_cart_vertical.dart';
import '../../../../utils/constants/sized.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_categoires.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: SingleChildScrollView(
            child: Column(children: [
      // Header //
      TprimaryHeaderCurved(
        child: Column(
          children: [
            // App Bar //

            const THomeAppBar(),

            const SizedBox(
              height: TSized.spaceBtwSection,
            ),
            // Search Bar //
            const TSearchWidget(
              text: "Search in Store",
              padding: EdgeInsets.all(0),
            ),

            const SizedBox(
              height: TSized.defaulltSpace,
            ),

            Padding(
              padding: const EdgeInsets.only(left: TSized.defaulltSpace),
              child: Column(
                // Heading //
                children: [
                  TSectionHeading(
                    title: 'Popular Categories',
                    showActionButton: false,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSized.defaulltSpace,
                  ),

                  //    Categories //
                  const THomeCategories(),
                ],
              ),
            )
          ],
        ),
      ),
// Body //
      Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            children: [
              const TPromoSlider(
                banners: [
                  TImage.productImage,
                  TImage.verticalOne,
                  TImage.productImageOne
                ],
              ),
              const SizedBox(
                height: TSized.defaulltSpace,
              ),
              // Popular Products //

              TGridLayouts(
                iteamBuilders: (_, index) => const ProductCartVertical(),
                iteamCount: 4,
              )
            ],
          ))
    ])));
  }
}
