import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import '../widgets/custom_expansion_tile.dart';
import '../widgets/patient_report_header.dart';
import '../widgets/report_input_widgets.dart';

class CreateReportView extends StatelessWidget {
  const CreateReportView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    final isAr = context.locale.languageCode == 'ar';

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: theme.whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            isAr ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: Text(
          "reservations.createReport".tr(),
          style: theme.bold18.copyWith(color: theme.textColor600),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const PatientReportHeader(
              name: "أ. أحمد رمضان",
              id: "9232345",
              date: "18 يناير الاثنين",
              time: "10:30 م",
              image: AssetsManager.doctor,
            ),
            const SizedBox(height: 16),
            CustomExpansionTile(
              title: "reservations.visitInfo".tr(),
              iconPath: AssetsManager.stethoscope,
              children: [
                ReportFieldLabel(label: "reservations.visitType".tr()),
                ReportDropdown(value: "reservations.consultation".tr()),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReportFieldLabel(label: "reservations.bloodPressure".tr()),
                          const ReportTextField(hint: "120/80"),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReportFieldLabel(label: "reservations.temperature".tr()),
                          const ReportTextField(hint: "36.6"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            CustomExpansionTile(
              title: "reservations.diagnosis".tr(),
              iconPath: AssetsManager.health,
              children: [
                ReportFieldLabel(label: "reservations.finalDiagnosis".tr()),
                ReportTextField(
                  hint: "reservations.diagnosisDetails".tr(),
                  maxLines: 4,
                ),
              ],
            ),
            const SizedBox(height: 12),
            CustomExpansionTile(
              title: "reservations.treatmentPlan".tr(),
              iconPath: AssetsManager.alba,
              children: [
                ReportFieldLabel(label: "reservations.addMedications".tr()),
                ReportTextField(hint: "reservations.itemName".tr()),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReportFieldLabel(label: "reservations.dose".tr()),
                          ReportTextField(hint: "reservations.dose".tr()),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReportFieldLabel(label: "reservations.frequency".tr()),
                          ReportTextField(hint: "reservations.frequency".tr()),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                ReportFieldLabel(label: "reservations.duration".tr()),
                ReportTextField(hint: "reservations.duration".tr()),
              ],
            ),
            const SizedBox(height: 12),
            CustomExpansionTile(
              title: "reservations.requiredTests".tr(),
              iconPath: AssetsManager.document,
              children: [
                ReportTextField(hint: "reservations.tests".tr()),
              ],
            ),
            const SizedBox(height: 12),
            CustomExpansionTile(
              title: "reservations.followUpDate".tr(),
              iconPath: AssetsManager.appointments,
              children: [
                ReportTextField(hint: "reservations.chooseDate".tr()),
              ],
            ),
            const SizedBox(height: 12),
            CustomExpansionTile(
              title: "reservations.medicalNotes".tr(),
              iconPath: AssetsManager.report,
              children: [
                ReportTextField(hint: "reservations.notes".tr(), maxLines: 3),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
