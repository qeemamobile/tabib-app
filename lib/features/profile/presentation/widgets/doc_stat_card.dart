import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';
import 'package:tabib_app/features/profile/presentation/widgets/star_review.dart';

class DocStatCard extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  final Color? valueColor;
  final String? prefixValue;
  final bool showStars;

  const DocStatCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.valueColor,
    this.prefixValue,
    this.showStars = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        color: theme.whiteColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.textColor100.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: SizedBox(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: icon,
              height: 24,
              width: 24,
              color: theme.primaryColor300,
            ),
            Text(
              title,
              style: theme.regular12.copyWith(color: theme.textColor300),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (prefixValue != null)
                  Text(
                    prefixValue!,
                    style: theme.bold18.copyWith(
                      color: valueColor ?? theme.primaryColor,
                    ),
                  ),
                Text(
                  value,
                  style: theme.bold18.copyWith(
                    color: valueColor ?? theme.primaryColor,
                  ),
                ),
              ],
            ),
            if (showStars) ...[
              StarReview()
            ],
          ],
        ),
      ),
    );
  }
}
