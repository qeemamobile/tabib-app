import 'package:flutter/material.dart';
import 'package:tabib_app/core/theme/fonts/my_font_weight.dart';

abstract final class AppFont {
  AppFont._();

  static TextStyle get _style => TextStyle(
        color: Colors.black,
      );

  // Headlines

  static TextStyle get bold24 =>
      _style.copyWith(fontSize: 24, fontWeight: MyFontWeight.bold);

  static TextStyle get medium20 =>
      _style.copyWith(fontSize: 20, fontWeight: MyFontWeight.medium);

  // Titles

  static TextStyle get bold18 =>
      _style.copyWith(fontSize: 18, fontWeight: MyFontWeight.bold);

  static TextStyle get bold16 =>
      _style.copyWith(fontSize: 16, fontWeight: MyFontWeight.bold);

  static TextStyle get medium16 =>
      _style.copyWith(fontSize: 16, fontWeight: MyFontWeight.medium);

  static TextStyle get medium13 =>
      _style.copyWith(fontSize: 13, fontWeight: MyFontWeight.medium);

  // Body

  static TextStyle get regular16 =>
      _style.copyWith(fontSize: 16, fontWeight: MyFontWeight.regular);

  static TextStyle get regular14 =>
      _style.copyWith(fontSize: 14, fontWeight: MyFontWeight.regular);

  static TextStyle get regular12 =>
      _style.copyWith(fontSize: 12, fontWeight: MyFontWeight.regular);

  // Labels

  static TextStyle get bold12 =>
      _style.copyWith(fontSize: 12, fontWeight: MyFontWeight.bold);
}
