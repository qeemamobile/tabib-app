import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';

class MedicationCard extends StatelessWidget {
  final String name;
  final String strength;
  final String dose;
  final String frequency;
  final String duration;
  final String timing;
  final String? note;

  const MedicationCard({
    super.key,
    required this.name,
    required this.strength,
    required this.dose,
    required this.frequency,
    required this.duration,
    required this.timing,
    this.note,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.whiteColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.textColor100.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: theme.bold18.copyWith(color: theme.textColor600),
          ),
          Text(
            strength,
            style: theme.regular14.copyWith(color: theme.textColor300),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildInfoColumn('records.details.dose'.tr(), dose, theme),
              _buildInfoColumn('records.details.frequency'.tr(), frequency, theme),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildInfoColumn('records.details.duration'.tr(), duration, theme),
              _buildInfoColumn('records.details.timing'.tr(), timing, theme),
            ],
          ),
          if (note != null) ...[
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF9E7),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                note!,
                style: theme.regular12.copyWith(color: const Color(0xFFB47F00)),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildInfoColumn(String label, String value, dynamic theme) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: theme.regular12.copyWith(color: theme.textColor200),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: theme.medium13.copyWith(color: theme.textColor600),
          ),
        ],
      ),
    );
  }
}
