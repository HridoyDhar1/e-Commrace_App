// ignore_for_file: unnecessary_string_escapes

import 'package:ecommeraceapp/utils/constants/images.dart';
import 'package:flutter/material.dart';

import '../../../../../common/wigets/common_widget_image/vertical_image.dart';
import '../../../../../utils/constants/color.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (_, index) {
          return TVerticalWidetText(
            image: TImage.productImageOne, // Provide image path
            title: "Shoes Categories",
            textColor: TColors.white,
            onTap: () {}, // Provide onTap function
          );
        },
      ),
    );
  }
}
