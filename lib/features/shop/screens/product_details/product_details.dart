import 'package:ecommeraceapp/common/wigets/text/section_heading.dart';
import 'package:ecommeraceapp/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommeraceapp/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommeraceapp/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommeraceapp/features/shop/screens/product_details/widgets/product_navagation_color.dart';
import 'package:ecommeraceapp/features/shop/screens/product_details/widgets/rating_and_shareing.dart';
import 'package:ecommeraceapp/features/shop/screens/ratting/product_rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sized.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product image slider //
            const TProductImageSlider(),

// Product Details //
            Padding(
              padding: const EdgeInsets.only(
                  right: TSized.defaulltSpace,
                  left: TSized.defaulltSpace,
                  bottom: TSized.defaulltSpace),
              child: Column(
                children: [
// Rating and Share //
                  const TRatingAndShare(),

                  const ProductMetaData(),

                  //  Attributes //
                  const ProductAttributes(),
                  const SizedBox(
                    height: TSized.spaceBtwItems,
                  ),
                  // CheckOut Button //
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("CheckOut"))),

                  // Description //
                  const TSectionHeading(
                    title: "Description",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSized.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    "This is a product descripiton for blue nike sleve lass vest. There are more things that can be added .",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'less',
                    moreStyle:
                        TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
                  ),

                  // Reviews //
                  const Divider(),

                  const SizedBox(
                    height: TSized.spaceBtwItems,
                  ),
                  Row(
                    children: [
                      const TSectionHeading(
                          title: "Reviews (199)", showActionButton: false),
                      IconButton(
                          onPressed: () => Get.to(const ProductRating()),
                          icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
