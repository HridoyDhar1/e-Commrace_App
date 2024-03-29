import 'package:ecommeraceapp/common/wigets/custom_shape/container/rounded_container.dart';
import 'package:ecommeraceapp/common/wigets/text/product_price_text.dart';
import 'package:ecommeraceapp/common/wigets/text/product_title_text.dart';
import 'package:ecommeraceapp/common/wigets/text/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/wigets/chips/choice_chip.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sized.dart';
import '../../../../../utils/helpers/helper_funcation.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        TRoundedContainer(
          Padding: const EdgeInsets.all(TSized.md),
          backgroundColor: darkMode ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
// Title , Price , Stock Status //
              Row(
                children: [
                  const TSectionHeading(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSized.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                              title: "Price :", smallSize: true),
                          const SizedBox(
                            width: TSized.spaceBtwItems,
                          ),
                          // Actual Price  //
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSized.spaceBtwItems,
                          ),
                          // Sale Price //
                          const ProductPrice(prize: "20")
                        ],
                      ),

                      // Stock //
                      Row(
                        children: [
                          const ProductTitleText(
                            title: "Stock :",
                            smallSize: true,
                          ),
                          Text(
                            "In Stock ",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),

              // Varitaion Description //
              const ProductTitleText(
                title:
                    "This is the description of the product and it can go up to max 4 lines",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),

        // Attributes //
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors"),
            const SizedBox(height: TSized.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChip(text: "Green", selected: false, onSelected: (value) {}),
                TChip(text: "Red", selected: true, onSelected: (value) {}),
                TChip(text: "Blue", selected: false, onSelected: (value) {}),
                TChip(text: "Green", selected: false, onSelected: (value) {}),
                TChip(text: "Red", selected: true, onSelected: (value) {}),
                TChip(text: "Blue", selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Size"),
            const SizedBox(height: TSized.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChip(
                  text: "EU 34",
                  selected: true,
                  onSelected: (value) {},
                ),
                TChip(text: "EU 36", selected: false, onSelected: (value) {}),
                TChip(text: "EU 39", selected: false, onSelected: (value) {}),
                TChip(
                  text: "EU 34",
                  selected: true,
                  onSelected: (value) {},
                ),
                TChip(text: "EU 36", selected: false, onSelected: (value) {}),
                TChip(text: "EU 39", selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
