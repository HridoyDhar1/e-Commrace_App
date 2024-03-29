import 'package:ecommeraceapp/common/wigets/custom_shape/container/rounded_container.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sized.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSized.spaceBtwItems,
      ),
      itemBuilder: (_, index) => TRoundedContainer(
        showBorder: true,
        Padding: const EdgeInsets.all(TSized.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon //

            // Status & Date //
            Row(
              children: [
                // Row //
                const Icon(Iconsax.ship),
                const SizedBox(height: TSized.spaceBtwItems / 2),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Processing",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColors.primary, fontWeightDelta: 1),
                      ),
                      Text("07 Nov 2024",
                          style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.arrow_right_34,
                      size: TSized.iconSm,
                    ))
              ],
            ),
            const SizedBox(height: TSized.spaceBtwSection),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // Row //
                      const Icon(Iconsax.tag),
                      const SizedBox(height: TSized.spaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Order",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text("07 Nov 2024",
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // Row //
                      const Icon(Iconsax.calendar),
                      const SizedBox(height: TSized.spaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Shipping Date",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text("[#74237]",
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// import '../../../../../utils/constants/color.dart';

// class OrderList extends StatelessWidget {
//   const OrderList(
//       {super.key,
//       this.width,
//       this.height,
//       required this.radius,
//       this.child,
//       this.showBorder = false,
//       required this.borderColor,
//       this.BackgroundColor = TColors.borderPrimary,
//       this.padding,
//       this.margin});
//   final double? width, height;
//   final double radius;
//   final Widget? child;
//   final bool showBorder;
//   final Color borderColor;
//   final Color BackgroundColor;
//   final EdgeInsetsGeometry? padding;
//   final EdgeInsetsGeometry? margin;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: height,
//       padding: padding,
//       margin: margin,
//       decoration: BoxDecoration(
//           color: BackgroundColor,
//           borderRadius: BorderRadius.circular(radius),
//           border: showBorder ? Border.all(color: borderColor) : null),
//     );
//   }
// }
