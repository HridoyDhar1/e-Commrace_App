import 'package:ecommeraceapp/common/wigets/app_bar/app_bar.dart';
import 'package:ecommeraceapp/common/wigets/image/rounded_image.dart';
import 'package:ecommeraceapp/common/wigets/product_cart/product_cart_hoizantal.dart';
import 'package:ecommeraceapp/features/shop/screens/store/store_section.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sized.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Sports Shirts"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            children: [
              // Banner //
              const TRoundedImage(
                imageurl: TImage.verticalOne,
                applyimageRadius: true,
              ),
              const SizedBox(
                height: TSized.spaceBtwItems,
              ),
              // Sub Categories //
              Column(
                children: [
                  TSectionHeading(
                    title: "Sports Shirts",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSized.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        separatorBuilder: (context, index) => const SizedBox(
                              width: TSized.spaceBtwItems,
                            ),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const ProductCartHorizantal();
                        }),
                  )
                ],
              ),
              Column(
                children: [
                  TSectionHeading(
                    title: "Sports Shirts",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSized.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        separatorBuilder: (context, index) => const SizedBox(
                              width: TSized.spaceBtwItems,
                            ),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const ProductCartHorizantal();
                        }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
