import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    // Headline styles - for main headers and impactful text
    headlineLarge: const TextStyle().copyWith(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      letterSpacing: -0.5,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      letterSpacing: -0.3,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      letterSpacing: -0.2,
    ),

    // Title styles - for section headers and important UI elements
    titleLarge: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      letterSpacing: -0.1,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 0,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 0,
    ),

    // Body styles - for main content text
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      letterSpacing: 0.15,
      height: 1.5,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
      letterSpacing: 0.15,
      height: 1.5,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.black.withAlpha(204), // 0.8 * 255 = 204
      letterSpacing: 0.1,
      height: 1.4,
    ),

    // Label styles - for smaller, supporting text
    labelLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 0.1,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.black.withAlpha(178), // 0.7 * 255 = 178
      letterSpacing: 0.1,
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      color: Colors.black.withAlpha(153), // 0.6 * 255 = 153
      letterSpacing: 0.1,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    // Headline styles - for main headers and impactful text
    headlineLarge: const TextStyle().copyWith(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: -0.5,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      letterSpacing: -0.3,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      letterSpacing: -0.2,
    ),

    // Title styles - for section headers and important UI elements
    titleLarge: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      letterSpacing: -0.1,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 0,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 0,
    ),

    // Body styles - for main content text
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      letterSpacing: 0.15,
      height: 1.5,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
      letterSpacing: 0.15,
      height: 1.5,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.white.withAlpha(204), // 0.8 * 255 = 204
      letterSpacing: 0.1,
      height: 1.4,
    ),

    // Label styles - for smaller, supporting text
    labelLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 0.1,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.white.withAlpha(178), // 0.7 * 255 = 178
      letterSpacing: 0.1,
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      color: Colors.white.withAlpha(153), // 0.6 * 255 = 153
      letterSpacing: 0.1,
    ),
  );
}
