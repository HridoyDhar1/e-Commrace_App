import 'package:flutter/material.dart';

class TtextTheme {
  TtextTheme._();
  static TextTheme lightTheme = TextTheme(
    // Headline //
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 25.0, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
    // Title //
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
    // Body //
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black),

    // Label //
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black),
  );

  static TextTheme darkTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 25.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    // Body //
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white),

    // Label //
    labelLarge: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
