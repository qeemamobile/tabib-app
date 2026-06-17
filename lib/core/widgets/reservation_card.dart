import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/theme/app_theme/theme_extension.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';

class ReservationCard extends StatelessWidget {
  final String status;
  final String doctorName;
  final String subTitle;
  final String? time;
  final bool showTime;
  final String? imageUrl;
  final Color? statusColor;
  final Color? statusBackgroundColor;
  final List<Widget>? actions;

  const ReservationCard({
    super.key,
    required this.status,
    required this.doctorName,
    required this.subTitle,
    this.time,
    this.imageUrl,
    this.statusColor,
    this.statusBackgroundColor,
    this.actions,
    this.showTime = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.whiteColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: theme.textColor100.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStatusBadge(theme),
              const Spacer(),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      doctorName,
                      style: theme.bold18.copyWith(color: theme.textColor600),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      subTitle,
                      style: theme.regular14.copyWith(
                        color: theme.textColor300,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(height: 8),
                    showTime || time != null
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                time!,
                                style: theme.regular14.copyWith(
                                  color: theme.textColor300,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Icon(
                                Icons.access_time,
                                size: 18,
                                color: theme.textColor300,
                              ),
                            ],
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              CustomImageView(
                imagePath: imageUrl ?? AssetsManager.doctor,
                height: 64,
                width: 64,
                radius: BorderRadius.circular(32),
              ),
            ],
          ),
          const SizedBox(height: 16),
          if (actions != null)
            Row(
              children: actions!
                  .map(
                    (action) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: action,
                      ),
                    ),
                  )
                  .toList(),
            ),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(AppThemeExtension theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: statusBackgroundColor ?? const Color(0xFFE8F5E9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        status,
        style: theme.bold12.copyWith(
          color: statusColor ?? const Color(0xFF2E7D32),
        ),
      ),
    );
  }
}

class ReservationActionButton extends StatelessWidget {
  final String label;
  final String? iconPath;
  final IconData? iconData;
  final VoidCallback onTap;
  final bool isFilled;

  const ReservationActionButton({
    super.key,
    required this.label,
    this.iconPath,
    this.iconData,
    required this.onTap,
    this.isFilled = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    final color = isFilled ? theme.whiteColor : theme.primaryColor;
    final backgroundColor = isFilled ? theme.primaryColor : Colors.transparent;
    final borderColor = isFilled ? Colors.transparent : theme.primaryColor;

    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: theme.bold12.copyWith(color: color, fontSize: 14),
            ),
            const SizedBox(width: 8),
            if (iconPath != null)
              CustomImageView(
                imagePath: iconPath!,
                height: 20,
                width: 20,
                color: color,
              )
            else if (iconData != null)
              Icon(iconData, size: 20, color: color),
          ],
        ),
      ),
    );
  }
}
