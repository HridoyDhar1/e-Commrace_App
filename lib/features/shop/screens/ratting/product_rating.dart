// ignore_for_file: unused_import

import 'package:ecommeraceapp/common/wigets/ratings/rating_indicator.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/wigets/app_bar/app_bar.dart';
import '../../../../utils/constants/sized.dart';
import 'widgets/overall_product.dart';
import 'widgets/user_review.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Rating & Reviews"),
        sowBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and reviews are verified and are from people who use the same type of device that you use"),
              const SizedBox(
                height: TSized.defaulltSpace,
              ),
              // Overall product ratings //
              const TOverallProductRating(),
              const TRaingBarIndicator(
                rating: 4.5,
              ),
              Text(
                "12,611",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: TSized.spaceBtwItems),
              // User Reviews List //
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard()
            ],
          ),
        ),
      ),
    );
  }
}
