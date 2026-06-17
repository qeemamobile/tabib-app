import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/features/home/presentation/widgets/doctor_certificates_section.dart';
import 'package:tabib_app/features/home/presentation/widgets/doctor_details_bottom_bar.dart';
import 'package:tabib_app/features/home/presentation/widgets/doctor_header_card.dart';
import 'package:tabib_app/features/home/presentation/widgets/doctor_specializations_section.dart';
import 'package:tabib_app/features/home/presentation/widgets/doctor_about_section.dart';

import '../../../../../core/widgets/calendar_section.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        title: Text('home.doctorDetails.title'.tr(), style: theme.bold18),
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DoctorHeaderCard(),
            SizedBox(height: 16),
            DoctorSpecializationsSection(),
            SizedBox(height: 16),
            DoctorAboutSection(),
            SizedBox(height: 16),
            DoctorCertificatesSection(),
            SizedBox(height: 16),
            CalendarSection(),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: const DoctorDetailsBottomBar(),
    );
  }
}
