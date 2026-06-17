import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/features/records/presentation/widgets/medication_card.dart';
import 'package:tabib_app/features/records/presentation/widgets/prescription_doctor_info.dart';
import 'package:tabib_app/features/records/presentation/widgets/prescription_section.dart';

import '../../../../core/constant/assets_manager.dart';
import '../../../../core/utilities/custom_image_view.dart';

class PrescriptionDetailsView extends StatelessWidget {
  const PrescriptionDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        title: Text('records.details.title'.tr(), style: theme.bold18),
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            PrescriptionDoctorInfo(
              doctorName: 'appointments.drName'.tr(),
              specialty: 'appointments.physiotherapy'.tr(),
              date: 'Tuesday 24.12.2025',
              time: '5:00 PM',
              rxNumber: 'RX-000124',
              imageUrl: AssetsManager.doctor,
            ),
            const SizedBox(height: 16),
            PrescriptionSection(
              title: 'home.doctorDetails.about'.tr(),
              child: const Text(
                'Follow-up on the condition after the previous visit. A noticeable improvement in symptoms was observed. Medication doses were adjusted based on the body\'s response and noticeable improvement.',
                style: TextStyle(height: 1.5),
              ),
            ),
            const SizedBox(height: 16),
            PrescriptionSection(
              title: 'records.details.diagnosis'.tr(),
              child: const Text(
                'Seasonal Skin Allergy',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 16),
            PrescriptionSection(
              title: 'records.details.medications'.tr(),
              child: const Column(
                children: [
                  MedicationCard(
                    name: 'Cetirizine',
                    strength: '10mg Tablets',
                    dose: '1 Tablet',
                    frequency: 'Once Daily',
                    duration: '14 Days',
                    timing: 'Before Bed',
                    note: 'May cause mild drowsiness',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100), // Space for bottom buttons
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: theme.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'records.details.bookFollowUp'.tr(),
                  style: theme.medium16.copyWith(color: theme.primaryColor),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 3,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: CustomImageView(imagePath: AssetsManager.download),
                label: Text('records.details.downloadPDF'.tr(), style: const TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.primaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
