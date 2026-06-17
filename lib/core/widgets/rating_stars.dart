import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';

class RatingStars extends StatelessWidget {
  final double rating;
  final int maxRating;
  final double size;
  final MainAxisAlignment mainAxisAlignment;

  const RatingStars({
    super.key,
    required this.rating,
    this.maxRating = 5,
    this.size = 12,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: List.generate(
        maxRating,
        (index) => Icon(
          index < rating.floor()
              ? Icons.star
              : (index < rating ? Icons.star_half : Icons.star_border),
          size: size,
          color: index < rating ? Colors.orange : theme.textColor100,
        ),
      ),
    );
  }
}
