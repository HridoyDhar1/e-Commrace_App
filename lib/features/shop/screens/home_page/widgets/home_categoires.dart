// ignore_for_file: unnecessary_string_escapes

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
        itemCount: 6,
        itemBuilder: (_, index) {
          return TVerticalWidetText(
            image:
                "assets\images\360_F_121818673_6EID5iF76VCCc4aGOLJkd94Phnggre3o.jpg", // Provide image path
            title: "Shoes Categories",
            textColor: TColors.white,
            onTap: () {}, // Provide onTap function
          );
        },
      ),
    );
  }
}
