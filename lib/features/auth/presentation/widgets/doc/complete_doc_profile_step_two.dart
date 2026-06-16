import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/features/auth/presentation/widgets/uploads_widget.dart';
import '../../view_model/doc/complete_doc_profile_cubit.dart';

class CompleteDocProfileStepTwo extends StatelessWidget {
  const CompleteDocProfileStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'auth.completeProfile.stepTwo.completeYourProfile'.tr(),
            style: theme.bold24.copyWith(fontSize: 20, color: theme.textColor600),
          ),
          Text(
            'auth.completeProfile.stepTwo.completeToActivate'.tr(),
            style: theme.medium16.copyWith(
              fontSize: 18,
              color: theme.textColor300,
            ),
          ),
          Text(
            'auth.completeProfile.stepTwo.documents'.tr(),
            style: theme.medium16.copyWith(fontSize: 18),
          ),
          Text(
            'auth.completeProfile.stepTwo.documentsDescription'.tr(),
            textAlign: TextAlign.start,
            style: theme.regular14.copyWith(color: theme.textColor200),
          ),
          _UploadFiles(
            title: 'auth.completeProfile.stepTwo.academicCertificates'.tr(),
              onTap: (){
                context.read<CompleteDocProfileCubit>().updateAcademicCertificateImage();
              }
          ),
          _UploadFiles(title: 'auth.completeProfile.stepTwo.idProof'.tr(),
              onTap: ()=> context.read<CompleteDocProfileCubit>().updateIdProofImage()

          ),
          _UploadFiles(
            title: 'auth.completeProfile.stepTwo.medicalLicenseImage'.tr(),
              onTap: ()=> context.read<CompleteDocProfileCubit>().updateMedicalLicenseImage()
          ),
          _UploadFiles(
            title: 'auth.completeProfile.stepTwo.professionalPhoto'.tr(),
            hintText: 'auth.completeProfile.stepTwo.uploadPhoto'.tr(),
              onTap: ()=> context.read<CompleteDocProfileCubit>().updateProfessionalPhoto()
          ),
          SizedBox(height: 49),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('auth.completeProfile.stepTwo.submitForReview'.tr()),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'auth.completeProfile.stepTwo.canEditLater'.tr(),
              textAlign: TextAlign.center,
              style: theme.regular14.copyWith(
                fontWeight: FontWeight.w500,
                color: theme.textColor200,
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class _UploadFiles extends StatelessWidget {
  const _UploadFiles({required this.title, this.hintText, this.onTap});
  final String title;
  final String? hintText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(title, style: theme.bold18.copyWith(fontSize: 16)),
        UploadsWidget(
          onTap:onTap ,
          hintText: hintText ?? 'auth.completeProfile.stepTwo.uploadFile'.tr(),
        ),
      ],
    );
  }
}
