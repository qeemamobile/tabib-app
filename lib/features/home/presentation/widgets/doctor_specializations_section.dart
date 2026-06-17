import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/features/home/presentation/widgets/details_section.dart';

class DoctorSpecializationsSection extends StatelessWidget {
  const DoctorSpecializationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return DetailsSection(
      title: 'home.search.specializations'.tr(),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          'appointments.injuryRehabilitation'.tr(),
          'appointments.motorRehabilitation'.tr(),
          'appointments.motorRehabilitation'.tr(), // Just as placeholder
        ].map((spec) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFEEF0F7),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                spec,
                style: theme.medium13.copyWith(color: theme.primaryColor),
              ),
            )).toList(),
      ),
    );
  }
}
