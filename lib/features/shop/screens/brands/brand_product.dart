import 'package:ecommeraceapp/common/wigets/app_bar/app_bar.dart';
import 'package:ecommeraceapp/common/wigets/product_cart/sortable/sortable_product.dart';
import 'package:ecommeraceapp/features/shop/screens/store/wigets/brand_card.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sized.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text("Nike"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSized.defaulltSpace),
          child: Column(
            children: [
              TBrandCard(showBorder: true),
              SizedBox(
                height: TSized.spaceBtwItems,
              ),
              ShortableProduct()
            ],
          ),
        ),
      ),
    );
  }
}
