part of 'complete_doc_profile_cubit.dart';

class CompleteDocProfileState extends Equatable {
  final XFile? academicCertificateImage;
  final XFile? idProofImage;
  final XFile? medicalLicenseImage;
  final XFile? professionalPhoto;

  const CompleteDocProfileState({
    this.academicCertificateImage,
    this.idProofImage,
    this.medicalLicenseImage,
    this.professionalPhoto,
  });

  CompleteDocProfileState copyWith({
    XFile? academicCertificateImage,
    XFile? idProofImage,
    XFile? medicalLicenseImage,
    XFile? professionalPhoto,
  }) {
    return CompleteDocProfileState(
      academicCertificateImage: academicCertificateImage ?? this.academicCertificateImage,
      idProofImage: idProofImage ?? this.idProofImage,
      medicalLicenseImage: medicalLicenseImage ?? this.medicalLicenseImage,
      professionalPhoto: professionalPhoto ?? this.professionalPhoto,
    );
  }

  @override
  List<Object?> get props => [
        academicCertificateImage,
        idProofImage,
        medicalLicenseImage,
        professionalPhoto,
      ];
}


