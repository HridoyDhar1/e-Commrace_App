import 'package:ecommeraceapp/bindings/general_bindings.dart';
import 'package:ecommeraceapp/utils/theme/custom_theme/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/constants/color.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: TColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
