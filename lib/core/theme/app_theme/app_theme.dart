import 'package:flutter/material.dart';
import 'package:tabib_app/core/theme/colors/app_colors.dart';

abstract class AppTheme {
  AppColors get color;
  ThemeData get themeData;
  ElevatedButtonThemeData get elevatedButtonTheme;
  OutlinedButtonThemeData get outlinedButtonTheme;
 
}
