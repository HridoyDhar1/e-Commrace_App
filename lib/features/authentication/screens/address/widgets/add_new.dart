import 'package:ecommeraceapp/common/wigets/app_bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sized.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Add new Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSized.defaulltSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: "Name"),
                ),
                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      labelText: "Phone Number"),
                ),
                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.building1),
                            labelText: "Street"),
                      ),
                    ),
                    const SizedBox(
                      width: TSized.spaceBtwItems,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.code),
                            labelText: "Post Code"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.building),
                            labelText: "City"),
                      ),
                    ),
                    const SizedBox(
                      width: TSized.spaceBtwItems,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.activity),
                            labelText: "State"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global), labelText: "Country"),
                ),
                const SizedBox(
                  height: TSized.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Save"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
