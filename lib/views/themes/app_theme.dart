import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_style.dart';

abstract class AppTheme {
  const AppTheme._();

  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Manrope',
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    iconTheme: const IconThemeData(color: Colors.black),
    textTheme: AppTextTheme.getTextTheme(),
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.black,
        selectionColor: AppColors.blueColor,
        selectionHandleColor: AppColors.blueColor),
    disabledColor: AppColors.dividerGreyColor,
    primaryColor: AppColors.blueColor,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.scaffoldColor,
        circularTrackColor: AppColors.scaffoldColor),
    dividerTheme: const DividerThemeData(
        thickness: 0.8, color: AppColors.dividerGreyColor),
    tabBarTheme: const TabBarTheme(
        dividerColor: Colors.transparent,
        labelPadding: EdgeInsets.zero,
        labelColor: Colors.black,
        unselectedLabelColor: AppColors.greyColor600,
        indicatorColor: Colors.black),
    appBarTheme: AppBarTheme(
        centerTitle: false,
        backgroundColor: AppColors.whiteTransparent,
        elevation: 0,
        scrolledUnderElevation: 0),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.black)),
    ),
  );
}
