import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommeraceapp/common/wigets/custom_shape/container/circle_container.dart';
import 'package:ecommeraceapp/common/wigets/image/rounded_image.dart';
import 'package:ecommeraceapp/features/shop/controllers/home_controller.dart';
import 'package:ecommeraceapp/utils/constants/color.dart';
import 'package:ecommeraceapp/utils/constants/sized.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banners.map((url) => TRoundedImage(imageurl: url)).toList(),
            options: CarouselOptions(
                onPageChanged: (index, _) =>
                    controller.UpdatePageIndicator(index),
                viewportFraction: 1)),
        const SizedBox(
          height: TSized.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircleContainer(
                    width: 20,
                    height: 5,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? TColors.primary
                        : TColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
