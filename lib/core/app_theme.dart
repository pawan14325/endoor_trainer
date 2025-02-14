import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  static ThemeData appTheme = ThemeData(
      canvasColor: AppColors.whiteColor,
      scaffoldBackgroundColor: AppColors.primaryColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryColor,
      ),
      inputDecorationTheme: InputDecorationTheme(

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: AppColors.whiteColor,
          filled: true,

          hintStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          )),
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: AppColors.secondaryColor,
        onPrimary: AppColors.greyColor,
        surface: AppColors.primaryColor,
        onSurface: AppColors.textFieldBackgroundColor,
        primaryContainer: AppColors.whiteColor,
        onPrimaryContainer: AppColors.whiteColor,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: "Roboto",
            color: AppColors.primaryColor,
            fontSize: 24),
        headlineMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto",
            color: AppColors.whiteColor,
            fontSize: 24),
        headlineSmall: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: "Roboto",
            color: AppColors.whiteColor,
            fontSize: 16),
        labelLarge: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: "Roboto",
            color: AppColors.whiteColor,
            fontSize: 14),
        labelMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto",
            color: AppColors.greyColor,
            fontSize: 12),
        labelSmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto",
            color: AppColors.greyColor,
            fontSize: 10),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: "Roboto",
            color: AppColors.greyColor,
            fontSize: 12),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: "Roboto",
            color: AppColors.greyColor,
            fontSize: 16),
        bodySmall: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto",
            color: Colors.black,
            fontSize: 16),
        titleLarge: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "Roboto",
            color: AppColors.greyColor,
            fontSize: 16),
        titleMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto",
            color: AppColors.greyColor,
            fontSize: 12),
        titleSmall: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "Roboto",
            color: AppColors.greyColor,
            fontSize: 36),
        displayLarge: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto",
            color: AppColors.greyColor,
            fontSize: 14),
        displayMedium: TextStyle(
            fontWeight: FontWeight.w300,
            fontFamily: "Roboto",
            color: AppColors.greyColor,
            fontSize: 12),
        displaySmall: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto",
            color: AppColors.primaryColor,
            fontSize: 20),
      ));
}
