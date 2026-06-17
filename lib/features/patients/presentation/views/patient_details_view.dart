import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/theme/app_theme/theme_extension.dart';
import 'package:tabib_app/features/patients/presentation/widgets/expandable_section.dart';
import 'package:tabib_app/features/patients/presentation/widgets/patient_info_card.dart';

class PatientDetailsView extends StatelessWidget {
  const PatientDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: theme.whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: theme.textColor600, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "ملف المريض",
          style: theme.bold18.copyWith(color: theme.textColor600),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const PatientInfoCard(name: "أ. أحمد رمضان", id: "232345"),
            const SizedBox(height: 24),
            ExpandableSection(
              title: "معلومات المريض",
              backgroundColor: const Color(0xFFE9EBF1),

              iconPath: AssetsManager.patientsActive,
              child: _buildPatientInfo(theme, const Color(0xFFE9EBF1)),
            ),
            ExpandableSection(
              title: "نظرة عامة طبية",
              iconPath: AssetsManager.stethoscope,
              backgroundColor: const Color(0xFFE9EBF1),
              child: _buildMedicalOverview(theme, const Color(0xFFE9EBF1)),
            ),
            ExpandableSection(
              title: "سجل الزيارات",
              iconPath: AssetsManager.history,
              backgroundColor: const Color(0xFFE9EBF1),
              child: _buildVisitHistory(theme, const Color(0xFFE9EBF1)),
            ),
            ExpandableSection(
              title: "آخر الفحوصات",
              iconPath: AssetsManager.health,
              backgroundColor: Color(0xFFEAF8F6),
              child: _buildLatestExaminations(theme, Color(0xFFEAF8F6)),
            ),
            ExpandableSection(
              title: "الملاحظات الطبية",
              backgroundColor: Color(0xFFFEF9F0),
              iconPath: AssetsManager.document,
              child: _buildMedicalNotes(theme, Color(0xFFFEF9F0)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPatientInfo(AppThemeExtension theme, Color backgroundColor) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          _buildInfoRow("النوع", "ذكر", theme),
          _buildInfoRow("تاريخ الميلاد", "1 يناير (25 سنة)", theme),

          _buildInfoRow("الطول", "155 سم", theme),
          _buildInfoRow("الوزن", "60 كيلو", theme),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, AppThemeExtension theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            value,
            style: theme.medium16.copyWith(color: theme.textColor600),
          ),
          const SizedBox(width: 8),
          Text(
            ": $label",
            style: theme.regular14.copyWith(color: theme.textColor300),
          ),
        ],
      ),
    );
  }

  Widget _buildMedicalOverview(AppThemeExtension theme, Color backgroundColor) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "التشخيصات السابقة",
            style: theme.regular14.copyWith(color: theme.textColor300),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.end,
            children: [
              _buildChip("ضغط مرتفع", theme),
              _buildChip("ضغط مرتفع", theme),
              _buildChip("ربو", theme),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "O+",
                style: theme.medium16.copyWith(color: theme.textColor600),
              ),
              const SizedBox(width: 8),
              Text(
                ": فصيلة الدم",
                style: theme.regular14.copyWith(color: theme.textColor300),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "البنسلين، اللاتكس",
                style: theme.medium16.copyWith(color: Colors.red),
              ),
              const SizedBox(width: 8),
              Text(
                ": الحساسية",
                style: theme.regular14.copyWith(color: theme.textColor300),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label, theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: theme.medium13.copyWith(color: theme.primaryColor),
      ),
    );
  }

  Widget _buildVisitHistory(AppThemeExtension theme, Color backgroundColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          _buildVisitItem("فحص طبي سنوي", "18 مايو، الاثنين", "10:30 م", theme),
          const Divider(),
          _buildVisitItem("فحص طبي سنوي", "18 مايو، الاثنين", "10:30 م", theme),
        ],
      ),
    );
  }

  Widget _buildVisitItem(String title, String date, String time, theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(title, style: theme.bold18.copyWith(fontSize: 14.0)),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios, size: 14),
                label: const Text("عرض التفاصيل"),
                style: TextButton.styleFrom(
                  foregroundColor: theme.primaryColor,
                  padding: EdgeInsets.zero,
                ),
              ),
              Text(
                "$date - $time",
                style: theme.regular12.copyWith(color: theme.textColor300),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLatestExaminations(AppThemeExtension theme, backgroundColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: _buildVisitItem(
        "أشعة رنين مغناطيسي",
        "18 مايو، الاثنين",
        "10:30 م",
        theme,
      ),
    );
  }

  Widget _buildMedicalNotes(AppThemeExtension theme, backgroundColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
        textAlign: TextAlign.end,
        style: theme.regular14.copyWith(color: theme.textColor600),
      ),
    );
  }
}
