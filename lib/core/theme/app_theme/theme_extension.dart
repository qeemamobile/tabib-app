import 'package:flutter/material.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final TextStyle bold24;
  final TextStyle medium20;
  final TextStyle bold18;
  final TextStyle medium13;
  final TextStyle medium16;
  final TextStyle regular16;
  final TextStyle regular14;
  final TextStyle regular12;
  final TextStyle bold12;
  //>>>>>>>>>>>>>>>Colors<<<<<<<<<<<<<<<<//
  final Color backgroundColor;
  final Color whiteColor;
  final Color blackColor;
  final Color primaryColor;
  final Color primaryColor300;
  final Color textColor100;
  final Color textColor200;

  final Color textColor300;
  final Color textColor600;
  AppThemeExtension({
    required this.bold24,
    required this.medium20,
    required this.bold18,
    required this.medium13,
    required this.medium16,
    required this.regular16,
    required this.regular14,
    required this.regular12,
    required this.bold12,
    required this.backgroundColor,
    required this.whiteColor,
    required this.blackColor,
    required this.primaryColor,
    required this.primaryColor300,
    required this.textColor300,
    required this.textColor600,
    required this.textColor200,
    required this.textColor100,
  });
  @override
  ThemeExtension<AppThemeExtension> copyWith({
    TextStyle? bold24,
    TextStyle? medium20,
    TextStyle? bold18,
    TextStyle? medium13,
    TextStyle? medium16,
    TextStyle? regular16,
    TextStyle? regular14,
    TextStyle? regular12,
    TextStyle? bold12,
    Color? backgroundColor,
    Color? whiteColor,
    Color? blackColor,
    Color? primaryColor,
    Color? primaryColor300,
    Color? textColor300,
    Color? textColor600,
    Color? textColor200,
    Color? textColor100,
  }) {
    return AppThemeExtension(
      textColor200: textColor200 ?? this.textColor200,
      medium13: medium13 ?? this.medium13,
      bold24: bold24 ?? this.bold24,
      medium20: medium20 ?? this.medium20,
      bold18: bold18 ?? this.bold18,
      medium16: medium16 ?? this.medium16,
      regular16: regular16 ?? this.regular16,
      regular14: regular14 ?? this.regular14,
      regular12: regular12 ?? this.regular12,
      bold12: bold12 ?? this.bold12,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      whiteColor: whiteColor ?? this.whiteColor,
      blackColor: blackColor ?? this.blackColor,
      primaryColor: primaryColor ?? this.primaryColor,
      textColor300: textColor300 ?? this.textColor300,
      textColor600: textColor600 ?? this.textColor600,
      textColor100: textColor100 ?? this.textColor100,
        primaryColor300:  primaryColor300 ?? this.primaryColor300,
    );
  }

  @override
  ThemeExtension<AppThemeExtension> lerp(
    covariant ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) return this;
    return AppThemeExtension(
      textColor200: Color.lerp(textColor200, other.textColor200, t)!,
      bold24: TextStyle.lerp(bold24, other.bold24, t)!,
      medium20: TextStyle.lerp(medium20, other.medium20, t)!,
      bold18: TextStyle.lerp(bold18, other.bold18, t)!,
      medium16: TextStyle.lerp(medium16, other.medium16, t)!,
      medium13: TextStyle.lerp(medium13, other.medium13, t)!,
      regular16: TextStyle.lerp(regular16, other.regular16, t)!,
      regular14: TextStyle.lerp(regular14, other.regular14, t)!,
      regular12: TextStyle.lerp(regular12, other.regular12, t)!,
      bold12: TextStyle.lerp(bold12, other.bold12, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      whiteColor: Color.lerp(whiteColor, other.whiteColor, t)!,
      blackColor: Color.lerp(blackColor, other.blackColor, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      textColor300: Color.lerp(textColor300, other.textColor300, t)!,
      textColor600: Color.lerp(textColor600, other.textColor600, t)!,
      textColor100: Color.lerp(textColor100, other.textColor100, t)!,
      primaryColor300: Color.lerp(primaryColor300, other.primaryColor300, t)!,
    );
  }
}
