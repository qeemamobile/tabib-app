import 'package:flutter/material.dart';

import '../../../../core/extension/app_extension.dart';

class StarReview extends StatelessWidget {
  const StarReview({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
            (index) => Icon(
          Icons.star,
          size: 12,
          color: index < 4 ? Colors.orange : theme.textColor100,
        ),
      ),
    );
  }
}
