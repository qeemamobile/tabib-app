import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';

class DocProfileHeader extends StatelessWidget {
  final String doctorName;
  final String doctorTitle;
  final String? imagePath;

  const DocProfileHeader({
    super.key,
    required this.doctorName,
    required this.doctorTitle,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomImageView(
          imagePath: imagePath ?? AssetsManager.doctor,
          height: 380,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                decoration: BoxDecoration(
                  color: theme.whiteColor.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: theme.whiteColor.withOpacity(0.3)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: theme.bold18.copyWith(color: theme.textColor600),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      doctorTitle,
                      style: theme.regular12.copyWith(color: theme.textColor300),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
