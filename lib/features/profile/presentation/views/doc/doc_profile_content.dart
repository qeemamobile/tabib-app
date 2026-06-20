import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/features/profile/presentation/widgets/doc_profile_header.dart';
import 'package:tabib_app/features/profile/presentation/widgets/doc_stat_card.dart';
import 'package:tabib_app/features/profile/presentation/widgets/profile_menu_item.dart';

class DocProfileContent extends StatelessWidget {
  const DocProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DocProfileHeader(
            doctorName: 'appointments.drName'.tr(),
            doctorTitle: 'profile.doctor.orthopedicConsultant'.tr(),
          ),
          Column(
            children: [
              _buildStatsRow(),
              const SizedBox(height: 24),
              ProfileMenuItem(
                title: 'profile.personalInfo'.tr(),
                icon: Icons.person_outline,
                onTap: () {},
              ),
              const SizedBox(height: 12),
              ProfileMenuItem(
                title: 'profile.settings'.tr(),
                icon: Icons.settings_outlined,
                onTap: () {},
              ),
              const SizedBox(height: 12),
              ProfileMenuItem(
                title: 'profile.experiences'.tr(),
                icon: Icons.work_outline,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatsRow() {
    return Row(
      children: [
        Expanded(
          child: DocStatCard(
            title: 'profile.doctor.earnings'.tr(),
            value: '2,500',
            icon: AssetsManager.moneys,
            valueColor: const Color(0xFF4CAF50),
            prefixValue: '${'common.currency'.tr()} ',
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: DocStatCard(
            title: 'profile.doctor.patients'.tr(),
            value: '36',
            icon: AssetsManager.profile,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: DocStatCard(
            title: 'profile.doctor.ratings'.tr(),
            value: '4.3',
            icon: AssetsManager.edit,
            showStars: true,
          ),
        ),
      ],
    );
  }
}
