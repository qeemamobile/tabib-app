part of 'complete_profile_cubit.dart';

class CompleteProfileState extends Equatable {
  final XFile? academicCertificateImage;
  final XFile? idProofImage;
  final XFile? medicalLicenseImage;
  final XFile? professionalPhoto;

  const CompleteProfileState({
    this.academicCertificateImage,
    this.idProofImage,
    this.medicalLicenseImage,
    this.professionalPhoto,
  });

  CompleteProfileState copyWith({
    XFile? academicCertificateImage,
    XFile? idProofImage,
    XFile? medicalLicenseImage,
    XFile? professionalPhoto,
  }) {
    return CompleteProfileState(
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


