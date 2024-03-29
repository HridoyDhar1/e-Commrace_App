import 'package:ecommeraceapp/common/wigets/app_bar/app_bar.dart';
import 'package:ecommeraceapp/common/wigets/app_bar/tab_bar.dart';
import 'package:ecommeraceapp/common/wigets/custom_shape/container/rounded_container.dart';
import 'package:ecommeraceapp/common/wigets/image/circle_image.dart';
import 'package:ecommeraceapp/common/wigets/layouts/grid_layouts.dart';
import 'package:ecommeraceapp/common/wigets/product_cart/product_cart_icon.dart';
import 'package:ecommeraceapp/common/wigets/text/section_heading.dart';
import 'package:ecommeraceapp/features/shop/screens/brands/brand_product.dart';
import 'package:ecommeraceapp/features/shop/screens/cart/cart_page.dart';
import 'package:ecommeraceapp/features/shop/screens/home_page/search_bar.dart';
import 'package:ecommeraceapp/features/shop/screens/store/wigets/category_tab.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sized.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(onPressed: () => Get.to(const CartPage()))
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerboxScrolled) {
              return [
                SliverAppBar(
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSized.defaulltSpace),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          // Search Bar //
                          const SizedBox(
                            height: TSized.spaceBtwItems,
                          ),
                          const TSearchWidget(
                            text: "Search in Store",
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(
                            height: TSized.spaceBtwItems,
                          ),
                          // Feature Brands //
                          TSectionHeading(
                            title: "Featured Brands ",
                            showActionButton: true,
                            onPressed: () => Get.to(const BrandProduct()),
                          ),
                          const SizedBox(
                            height: TSized.spaceBtwItems,
                          ),
                          TGridLayouts(
                              iteamCount: 4,
                              mainAxisExtent: 80,
                              iteamBuilders: (_, index) {
                                return GestureDetector(
                                  child: TRoundedContainer(
                                    Padding: const EdgeInsets.all(TSized.sm),
                                    showBorder: true,
                                    backgroundColor: Colors.transparent,
                                    child: Row(
                                      children: [
                                        // Icon //
                                        Flexible(
                                          child: TCircularImage(
                                            image: TImage.brandLogo,
                                            isNetworkImage: false,
                                            backgroundColor: Colors.transparent,
                                            overlayColor: isDark
                                                ? TColors.white
                                                : TColors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                            width: TSized.spaceBtwItems / 2),

                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Nike",
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium,
                                              ),
                                              Text(
                                                "256 products ",
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })
                        ],
                      ),
                    ),
                    // Tabs  //
                    bottom: const TTabBar(tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Furniture"),
                      ),
                      Tab(
                        child: Text("Electronics"),
                      ),
                      Tab(
                        child: Text("Cosmetics"),
                      )
                    ]))
              ];
            },
            body: const TabBarView(
              children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
              ],
            )),
      ),
    );
  }
}
