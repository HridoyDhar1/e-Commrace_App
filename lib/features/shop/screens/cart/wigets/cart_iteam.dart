import 'package:flutter/cupertino.dart';

import '../../../../../common/wigets/cart/add_remove.dart';
import '../../../../../common/wigets/cart/cart_iteam.dart';
import '../../../../../common/wigets/text/product_price_text.dart';
import '../../../../../utils/constants/sized.dart';

class CartIteamsPage extends StatelessWidget {
  const CartIteamsPage({super.key, this.addRemoveButtons = true});
  final bool addRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) => Column(
              children: [
                const TCartIteams(),
                if (addRemoveButtons)
                  const SizedBox(
                    height: TSized.spaceBtwItems,
                  ),
                if (addRemoveButtons)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 70,
                          ),

                          // Add Remove Buttons //
                          ProductAddRemoveButton(),
                        ],
                      ),
                      ProductPrice(prize: "256")
                      // Add Remove Buttons //
                    ],
                  )
              ],
            ),
        separatorBuilder: (_, __) => const SizedBox(
              height: TSized.spaceBtwSection,
            ),
        itemCount: 2);
  }
}
