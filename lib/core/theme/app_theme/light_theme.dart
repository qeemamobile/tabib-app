import 'package:flutter/material.dart';
import 'package:tabib_app/core/theme/app_theme/app_theme.dart';
import 'package:tabib_app/core/theme/app_theme/theme_extension.dart';
import 'package:tabib_app/core/theme/colors/app_colors.dart';
import 'package:tabib_app/core/theme/colors/light_colors.dart';
import 'package:tabib_app/core/theme/fonts/app_font.dart';

class LightTheme extends AppTheme {
  @override
  AppColors get color => LightColors();

  @override
  ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: color.primaryColor,
      foregroundColor: color.whiteColor,
      minimumSize: const Size(double.infinity, 50),
      textStyle: AppFont.medium16.copyWith(fontWeight: FontWeight.w700),
    ),
  );

  @override
  OutlinedButtonThemeData get outlinedButtonTheme => OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: color.primaryColor,
      side: BorderSide(color: color.primaryColor),
      minimumSize: const Size(double.infinity, 50),
      textStyle: AppFont.medium16.copyWith(fontWeight: FontWeight.w700),
    ),
  );

  @override
  ThemeData get themeData => ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Cairo',
    scaffoldBackgroundColor: color.bgColor,
    elevatedButtonTheme: elevatedButtonTheme,
    outlinedButtonTheme: outlinedButtonTheme,
    extensions: [
      AppThemeExtension(
        bold24: AppFont.bold24,
        medium20: AppFont.medium20,
        bold18: AppFont.bold18,
        medium13: AppFont.medium13,
        medium16: AppFont.medium16,
        regular16: AppFont.regular16,
        regular14: AppFont.regular14,
        regular12: AppFont.regular12,
        bold12: AppFont.bold12,
        backgroundColor: color.bgColor,
        whiteColor: color.whiteColor,
        blackColor: color.blackColor,
        primaryColor: color.primaryColor,
        textColor300: color.textColor300,
        textColor600: color.textColor600,
        textColor200: color.textColor200,
        textColor100: color.textColor100,
        primaryColor300: color.primaryColor300,
      ),
    ],
  );
}
