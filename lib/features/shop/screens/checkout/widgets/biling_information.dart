import 'package:ecommeraceapp/common/wigets/text/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sized.dart';

class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: "Shipping Address",
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          "Hare Krishna",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 20,
            ),
            const SizedBox(
              width: TSized.spaceBtwItems / 2,
            ),
            Expanded(
                child: Text(
              "03846388345",
              style: Theme.of(context).textTheme.bodyLarge,
              softWrap: true,
            ))
          ],
        ),
        const SizedBox(
          height: TSized.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 20,
            ),
            const SizedBox(
              width: TSized.spaceBtwItems / 2,
            ),
            Expanded(
                child: Text(
              "South Liane, Maine 4556, USA ",
              style: Theme.of(context).textTheme.bodyLarge,
              softWrap: true,
            ))
          ],
        )
      ],
    );
  }
}
