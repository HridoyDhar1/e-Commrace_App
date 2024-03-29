import 'package:ecommeraceapp/features/authentication/screens/forget_password/forget_password.dart';
import 'package:ecommeraceapp/features/authentication/screens/singup_page/singup_page.dart';
import 'package:ecommeraceapp/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sized.dart';

class LoginFrom extends StatelessWidget {
  const LoginFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSized.spaceBtwSection),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: "Email"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            // Remember and Forget Password //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (Value) {}),
                    const Text("Remember Me"),
                  ],
                ),
                TextButton(
                    onPressed: () => Get.to(const ForgetPassword()),
                    child: const Text("Forget Password")),
              ],
            ),
            const SizedBox(
              height: TSized.spaceBtwSection / 2,
            ),
            // Sing in  button //
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(const NavigationMenu()),
                  child: const Text("Sing In")),
            ),
            const SizedBox(
              height: TSized.spaceBtwSection / 2,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(const SignUpPage()),
                  child: const Text("Create Account")),
            )
          ],
        ),
      ),
    );
  }
}
