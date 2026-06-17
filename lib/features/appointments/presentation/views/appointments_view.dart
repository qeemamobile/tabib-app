import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import '../../../../core/utilities/custom_image_view.dart';

class AppointmentsView extends StatelessWidget {
  const AppointmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: const [
          DoctorProfileCard(),
          DoctorProfileCard(),
          DoctorProfileCard(),
        ],
      ),
    );
  }
}

class DoctorProfileCard extends StatelessWidget {
  const DoctorProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    // Status colors derived from theme
    final confirmedBg = theme.primaryColor.withOpacity(0.1);
    final confirmedText = theme.primaryColor;
    final tagBgColor = theme.textColor100.withOpacity(0.1);

    return Container(
      decoration: BoxDecoration(
        color: theme.whiteColor,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: theme.blackColor.withOpacity(0.04),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row: Status badge, Doctor info, Profile Image
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Status Badge
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: theme.primaryColor.withOpacity(0.2),
                      width: 2,
                    ),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1622253692010-333f2da6031d?auto=format&fit=crop&w=200&q=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'appointments.drName'.tr(),
                        style: theme.bold18.copyWith(color: theme.primaryColor),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'appointments.physiotherapy'.tr(),
                        style: theme.regular14.copyWith(
                          color: theme.textColor300,
                        ),
                      ),
                      const SizedBox(height: 6),
                      // Rating
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          const SizedBox(width: 4),
                          Text(
                            '4.88',
                            style: theme.bold12.copyWith(
                              color: theme.textColor300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: confirmedBg,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'appointments.confirmed'.tr(),
                    style: theme.bold12.copyWith(
                      color: confirmedText,
                      fontSize: 13,
                    ),
                  ),
                ),

                // Doctor Profile Picture
              ],
            ),
            const SizedBox(height: 16),

            // Specialties Header
            Text(
              'appointments.specialties'.tr(),
              style: theme.medium13.copyWith(color: theme.textColor300),
            ),
            const SizedBox(height: 8),

            // Specialties Tags List
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                SpecialtyTag(
                  label: 'appointments.injuryRehabilitation'.tr(),
                  textColor: theme.primaryColor,
                  bgColor: tagBgColor,
                ),
                SpecialtyTag(
                  label: 'appointments.motorRehabilitation'.tr(),
                  textColor: theme.primaryColor,
                  bgColor: tagBgColor,
                ),
              ],
            ),

            const SizedBox(height: 16),
            Divider(color: theme.textColor100.withOpacity(0.2), thickness: 1),
            const SizedBox(height: 8),

            // Bottom Info: Date/Time and Price
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Date & Time
                Row(
                  children: [
                    CustomImageView(
                      height: 12,
                      imagePath: AssetsManager.appointments,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'appointments.dateTime'.tr(),
                      style: theme.regular12.copyWith(
                        color: theme.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                // Price
                Row(
                  children: [
                    CustomImageView(imagePath: AssetsManager.moneys),
                    Text(
                      '120',
                      style: theme.regular12.copyWith(
                        color: theme.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 4),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SpecialtyTag extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color bgColor;

  const SpecialtyTag({
    super.key,
    required this.label,
    required this.textColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: theme.medium13.copyWith(color: textColor, fontSize: 13),
      ),
    );
  }
}
