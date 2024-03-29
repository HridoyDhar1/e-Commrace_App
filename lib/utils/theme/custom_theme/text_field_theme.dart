import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();
  // Custome text Theme //
  static InputDecorationTheme lightTextFieldThem = InputDecorationTheme(
      suffixIconColor: Colors.grey,
      prefixIconColor: Colors.grey,
      // constraints: const boxconstraints.expand(heigh:14,inputFieldHeight) //
      labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
      hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
      errorStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
      floatingLabelStyle:
          const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 1, color: Colors.grey)),
      enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 1, color: Colors.grey)),
      focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 1, color: Colors.black12)),
      errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 1, color: Colors.red)),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 2, color: Colors.orange)));
  // Custome dark text field Theme //
  static InputDecorationTheme darkTextFieldTheme = InputDecorationTheme(
      suffixIconColor: Colors.grey,
      prefixIconColor: Colors.grey,
      // constraints: const boxconstraints.expand(heigh:14,inputFieldHeight) //
      labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
      hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
      errorStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
      floatingLabelStyle:
          const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 1, color: Colors.grey)),
      enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 1, color: Colors.grey)),
      focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 1, color: Colors.black12)),
      errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 1, color: Colors.red)),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 2, color: Colors.orange)));
}
