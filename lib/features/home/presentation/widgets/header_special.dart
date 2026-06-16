
import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/constant/assets_manager.dart';
import '../../../../core/extension/app_extension.dart';

class HeaderSpecial extends StatelessWidget {
  const HeaderSpecial({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         title,
          style: theme.bold24.copyWith(fontWeight: FontWeight.w700,color: theme.primaryColor500,fontSize: 14),
        ),
        Text("more",
          style: theme.bold24.copyWith(fontWeight: FontWeight.w700,color: theme.primaryColor500,fontSize: 14),
        ),
      ],
    );
  }
}
