import 'package:ecommeraceapp/features/authentication/screens/singup_page/wigets/singup_term_condition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sized.dart';
import '../../../../../utils/helpers/helper_funcation.dart';
import '../../../../../utils/validators/validator.dart';
import '../../../controllers/singup_screen/singup_controller.dart';

class SingUpFormWiget extends StatelessWidget {
  const SingUpFormWiget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(SingUpController());
    return Form(
      key: controller.singupFormkey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      TVaildator.validateEmptyText("First Name", value),
                  controller: controller.firstName,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "First Name",
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      TVaildator.validateEmptyText("Last Name", value),
                  controller: controller.lastName,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Last Name",
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSized.spaceBtwSection),
          // User Name
          TextFormField(
            validator: (value) =>
                TVaildator.validateEmptyText("User Name", value),
            controller: controller.userName,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: "User Name",
            ),
          ),
          const SizedBox(height: TSized.spaceBtwSection),
          // Email
          TextFormField(
            controller: controller.email,
            validator: (value) => TVaildator.vaildateEmail(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: "Email",
            ),
          ),
          const SizedBox(height: TSized.spaceBtwSection),

          // Password
          Obx(
            () => TextFormField(
              validator: (value) => TVaildator.validatePassword(value),
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value
                      ? Iconsax.eye_slash
                      : Iconsax.eye),
                ),
              ),
            ),
          ),

          const SizedBox(height: TSized.spaceBtwSection),

          // Term and Condition
          SingUpTermAndConditaion(dark: dark),
          const SizedBox(height: TSized.spaceBtwSection),
          // Signup Button //
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.singUp(),
              child: Text(
                "SignUp",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
