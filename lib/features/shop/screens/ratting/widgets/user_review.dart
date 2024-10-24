import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../common/wigets/ratings/rating_indicator.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sized.dart';
// import '../../../../../utils/helpers/helper_funcation.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(
                    width: 50, height: 50, image: AssetImage(TImage.person)),
                // const CircleAvatar(
                //   backgroundColor: TColors.black,
                // ),
                const SizedBox(width: TSized.spaceBtwItems),
                Text(
                  "Radha Madav",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),

        // Review //
        Row(
          children: [
            const TRaingBarIndicator(rating: 4),
            Text(
              "01 Nov, 2023",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: TSized.spaceBtwItems),
        const ReadMoreText(
          "The user interface of the app is quite intuitive.I was able to navigate and make purchases seamlessly.Great job!.",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: "show more",
          trimExpandedText: 'show less',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ),

        // Company Review //
        // TRoundedContainer(
        //   borderColor: TColors.white,
        //   backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
        //   child: Padding(
        //     padding: EdgeInsets.all(TSized.md),
        //     child: Column(
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Text(
        //               " T's Store ",
        //               style: Theme.of(context).textTheme.titleMedium,
        //             ),
        //             Text(
        //               " 02 Nov, 2023 ",
        //               style: Theme.of(context).textTheme.titleMedium,
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: TSized.spaceBtwItems,
        //         ),
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
}
