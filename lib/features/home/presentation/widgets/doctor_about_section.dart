import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/features/home/presentation/widgets/details_section.dart';

class DoctorAboutSection extends StatelessWidget {
  const DoctorAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailsSection(
      title: 'home.doctorDetails.about'.tr(),
      child: const Text(
        'Dr. Ahmed Ramadan is a specialist in treating and following up on cases of bones, joints, and sports injuries. He is interested in providing a comprehensive treatment plan that helps the patient restore movement and quality of life.',
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
