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
          const DocProfileHeader(
            doctorName: 'Dr. Ahmed Ramadan',
            doctorTitle: 'Orthopedic & Sports Medicine Consultant',
          ),
          Column(
            children: [
              _buildStatsRow(),
              const SizedBox(height: 24),
              ProfileMenuItem(
                title: 'Personal Information',
                icon: Icons.person_outline,
                onTap: () {},
              ),
              const SizedBox(height: 12),
              ProfileMenuItem(
                title: 'Settings',
                icon: Icons.settings_outlined,
                onTap: () {},
              ),
              const SizedBox(height: 12),
              ProfileMenuItem(
                title: 'Experiences',
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
    return const Row(
      children: [
        Expanded(
          child: DocStatCard(
            title: 'Earnings',
            value: '2,500',
            icon: AssetsManager.moneys,
            valueColor: Color(0xFF4CAF50),
            prefixValue: 'SAR ',
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: DocStatCard(
            title: 'Patients',
            value: '36',
            icon: AssetsManager.profile,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: DocStatCard(
            title: 'Ratings',
            value: '4.3',
            icon: AssetsManager.edit,
            showStars: true,
          ),
        ),
      ],
    );
  }
}
