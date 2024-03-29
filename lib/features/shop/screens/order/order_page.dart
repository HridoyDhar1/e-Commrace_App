import 'package:ecommeraceapp/common/wigets/app_bar/app_bar.dart';
import 'package:ecommeraceapp/features/shop/screens/order/widgets/order_list.dart';
import 'package:ecommeraceapp/utils/constants/sized.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar ///
      appBar: TAppBar(
        title: Text(
          "My Orders",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSized.defaulltSpace),
        // Orders //
        child: OrderList(),
      ),
    );
  }
}
