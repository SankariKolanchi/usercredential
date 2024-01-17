import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTextStyle {
  const AppTextStyle._();

  static const appBarTitle = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlackColor);

  static const headerTitleStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w700);

  static const greyF20W500TextStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.greyColor);

  static const greyTitle = TextStyle(
      fontSize: 22, fontWeight: FontWeight.w500, color: AppColors.greyColor);

  static const largeGreyTitle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.w500, color: AppColors.greyColor);

  static const titleTextStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black);

  static const blackF20W700TextStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black);

  static const subTitleTextStyle = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.greyColor);

  static const buttonTitleTextStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.greyColor600);

  static const darkBlackF13W500TextStyle = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlackColor);

  static const darkBlackF14W400TextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.darkBlackColor);

  static const darkBlackF14W500TextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlackColor);

  static const darkBlackF14W600TextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColors.darkBlackColor);

  static const darkBlackF16W500TextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlackColor);

  static const darkBlackF17W500TextStyle = TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlackColor);

  static const darkBlackF18W500TextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlackColor);

  static const blackF10W400TextStyle =
      TextStyle(fontSize: 10, fontWeight: FontWeight.w400);

  static const blackF10W600TextStyle =
      TextStyle(fontSize: 10, fontWeight: FontWeight.w600);

  static const blackF12W400TextStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w400);

  static const blackF12W500TextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlackColor);

  static const blackF12W600TextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.darkBlackColor);

  static const blackF12W700TextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: AppColors.darkBlackColor);

  static const blackF14W500TextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlackColor);

  static const blackF14W600TextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColors.darkBlackColor);

  static const blackF14W700TextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: AppColors.darkBlackColor);

  static const blackF16W500TextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlackColor);

  static const blackF16W600TextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.darkBlackColor);

  static const blackF16W700TextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColors.darkBlackColor);

  static const greyNF10W600Style = TextStyle(
      fontSize: 10, fontWeight: FontWeight.w600, color: AppColors.greyColor);

  static const greyF10W600Style = TextStyle(
      fontSize: 10, fontWeight: FontWeight.w600, color: AppColors.greyColor600);

  static const greyF12W500Style = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.greyColor600);

  static const greyF14W500Style = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.greyColor600);

  static const greyW500F14Style = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.greyColor800);

  static const greyW600F14W400Style = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.greyColor600);

  static const greyW600F20W500Style = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.greyColor600);

  static const outlinegreyF14W500Style = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.outlinegreyColor);

  static const smallTitleTextStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.greyColor);

  static const grey300FW600S10Style = TextStyle(
      fontSize: 10, fontWeight: FontWeight.w600, color: AppColors.greyColor300);

  static const grey300FW500S14Style = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.greyColor300);

  static const greyFW500S14Style = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.greyColor);

  static const greyW500S12Style = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.greyColor);

  static const greyW500S16Style = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.greyColor);

  static const greyColor500F12W500Style = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.greyColor500);

  static const blackMediumTextStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  static const blueF10W700TextStyle = TextStyle(
      fontSize: 10, fontWeight: FontWeight.w700, color: AppColors.blueColor);

  static const blueF14W500TextStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.blueColor);

  static const blueF14W600TextStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.blueColor);

  static const blueF20W600TextStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.blueColor);

  static const whiteF14W500TextStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);

  static const whiteF14W600TextStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white);

  static const redF12W500TextStyle = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.redColor);

  static const redF14W500TextStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.redColor);
}

abstract class AppTextTheme {
  const AppTextTheme._();

  static TextTheme getTextTheme() {
    return const TextTheme(
        titleLarge: AppTextStyle.greyTitle,
        displayLarge: AppTextStyle.titleTextStyle,
        titleMedium: AppTextStyle.subTitleTextStyle,
        titleSmall: AppTextStyle.smallTitleTextStyle,
        bodyMedium: AppTextStyle.blackMediumTextStyle,
        bodyLarge: AppTextStyle.buttonTitleTextStyle,
        bodySmall: AppTextStyle.greyF12W500Style,
        headlineLarge: AppTextStyle.headerTitleStyle,
        headlineMedium: AppTextStyle.blackF16W600TextStyle,
        headlineSmall: AppTextStyle.blackF14W500TextStyle,
        labelLarge: AppTextStyle.greyF20W500TextStyle,
        labelMedium: AppTextStyle.blackF14W600TextStyle,
        labelSmall: AppTextStyle.blackF10W600TextStyle);
  }
}
