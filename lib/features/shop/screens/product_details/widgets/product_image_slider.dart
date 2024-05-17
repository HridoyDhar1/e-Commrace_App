import 'package:ecommeraceapp/common/wigets/custom_shape/curved_edge_widget.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/wigets/app_bar/app_bar.dart';
import '../../../../../common/wigets/icons/circular_icon.dart';
import '../../../../../common/wigets/image/rounded_image.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sized.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TcurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            // Main large image //
            const SizedBox(
                height: 420,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Center(
                      child: Image(image: AssetImage(TImage.verticalTwo))),
                )),
            // Image Slider //
            Positioned(
              top: 270,
              // bottom: 20,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) => TRoundedImage(
                        width: 80,
                        backgroundColor: dark ? TColors.dark : TColors.white,
                        border: Border.all(color: TColors.primary),
                        padding: const EdgeInsets.all(TSized.sm),
                        imageurl: TImage.verticalTwo),
                    separatorBuilder: (_, __) => const SizedBox(
                          width: TSized.spaceBtwItems,
                        ),
                    itemCount: 10),
              ),
            ),

            // Appbar Icons //
            const TAppBar(
              sowBackArrow: true,
              actions: [
                TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
