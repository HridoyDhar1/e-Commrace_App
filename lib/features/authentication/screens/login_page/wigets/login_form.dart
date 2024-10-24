import 'package:ecommeraceapp/features/authentication/controllers/login/login_controller.dart';
import 'package:ecommeraceapp/features/authentication/screens/forget_password/forget_password.dart';
import 'package:ecommeraceapp/features/authentication/screens/singup_page/singup_page.dart';
import 'package:ecommeraceapp/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sized.dart';

class LoginFrom extends StatelessWidget {
  const LoginFrom({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(loginController());

    return Form(
      key: controller.loginFormkey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSized.spaceBtwSection),
        child: Column(
          children: [
            TextFormField(
              validator: (value) =>
                  TVaildator.validateEmptyText('Password', value),
              controller: controller.email,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: "Email"),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => TextFormField(
                validator: (value) => TVaildator.validatePassword(value),
                controller: controller.password,
                obscureText: controller.hidepassword.value,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidepassword.value =
                        !controller.hidepassword.value,
                    icon: Icon(controller.hidepassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  ),
                ),
              ),
            ),
            // Remember and Forget Password //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                          value: controller.remberMe.value,
                          onChanged: (value) => controller.remberMe.value),
                    ),
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
                  onPressed: () => controller.emailAndPasswordSingIn(),
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
