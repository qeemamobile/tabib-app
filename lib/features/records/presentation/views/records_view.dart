import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/features/records/presentation/widgets/medical_record_card.dart';
import '../../../../core/routes/routes.dart';
import '../../../../core/widgets/filter_chips.dart';

class RecordsView extends StatelessWidget {
  const RecordsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterChips(
          filters: [
            'records.filters.all'.tr(),
            'records.filters.reports'.tr(),
            'records.filters.prescriptions'.tr(),
            'records.filters.tests'.tr(),
          ],
          onSelected: (index) {},
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 10),
            itemCount: 3,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              return MedicalRecordCard(
                badgeText: 'records.filters.reports'.tr(),
                doctorName: 'appointments.drName'.tr(),
                specialty: 'appointments.physiotherapy'.tr(),
                summary:
                    'Diabetes follow-up session, the patient is in stable condition, the insulin dose has been adjusted.',
                date: 'Tuesday 24.12.2025',
                time: '5:00 PM',
                onDownloadTap: () {},
                onViewTap: () {
                  Navigator.of(
                    context,
                  ).pushNamed(AppRoutes.prescriptionDetailsView);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
