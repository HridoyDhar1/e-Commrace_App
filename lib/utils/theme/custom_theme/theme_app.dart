import 'package:ecommeraceapp/utils/theme/custom_theme/appbar_theme.dart';
import 'package:ecommeraceapp/utils/theme/custom_theme/button_sheet.dart';
import 'package:ecommeraceapp/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommeraceapp/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommeraceapp/utils/theme/custom_theme/outline_button_theme.dart';
import 'package:ecommeraceapp/utils/theme/custom_theme/text_field_theme.dart';
import 'package:ecommeraceapp/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: " San Francisco",
      scaffoldBackgroundColor: Colors.white,
      textTheme: TtextTheme.lightTheme,
      // app Bar Theme //
      appBarTheme: TAppBarTheme.ligthAppBarTheme,
// Check box theme //
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
// Bottom Sheet theme //
      bottomSheetTheme: TButtonSheetTheme.lightButtonSheetTheme,
// Elevated Button theme //
      elevatedButtonTheme: TElevattedButtn.lightElevatedButtonTheme,
// Outline Button theme //

      outlinedButtonTheme: TOutlineButtonTheme.lightOutlineTheme,
// Input decoration theme //
      inputDecorationTheme: TTextTheme.lightTextFieldThem,
      primaryColor: Colors.deepPurple);
// ChipTheme //
// chipTheme:TChipTheme.lightChipTheme;
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: "San Francisco",
      scaffoldBackgroundColor: Colors.black,
      textTheme: TtextTheme.darkTheme,
      // app Bar Theme //
      appBarTheme: TAppBarTheme.darkAppBar,
// Check box theme //
      checkboxTheme: TCheckBoxTheme.darkCheckBoxtheme,
// Bottom Sheet theme //
      bottomSheetTheme: TButtonSheetTheme.darkBottomSheetTheme,
// Elevated Button theme //
      elevatedButtonTheme: TElevattedButtn.DarkElevatedButtonTheme,
// Outline Button theme //

      outlinedButtonTheme: TOutlineButtonTheme.darkOutlneTheme,
// Input decoration theme //
      inputDecorationTheme: TTextTheme.darkTextFieldTheme,
      primaryColor: Colors.deepPurple);
}
