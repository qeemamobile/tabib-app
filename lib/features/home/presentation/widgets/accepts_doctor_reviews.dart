import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/extension/app_extension.dart';

class AcceptDoctorBtn extends StatelessWidget {
  const AcceptDoctorBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 10,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            decoration: ShapeDecoration(
              color: const Color(0xFF28B8A5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                Text(
                  "common.accept".tr(),
                  textAlign: TextAlign.center,
                  style: theme.bold12.copyWith(fontSize: 14, color: Colors.white),
                ),
                Icon(Icons.check, color: Colors.white)
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                Text(
                  "common.close".tr(),
                  textAlign: TextAlign.center,
                  style: theme.bold12.copyWith(
                    fontSize: 14,
                    color: const Color(0xFFFF2D55),
                  ),
                ),
                Icon(Icons.close, color: const Color(0xFFFF2D55))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
