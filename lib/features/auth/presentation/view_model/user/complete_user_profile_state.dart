
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';



class CompleteUserProfileState extends Equatable {
  final XFile? academicCertificateImage;
  final XFile? idProofImage;
  final XFile? medicalLicenseImage;
  final XFile? professionalPhoto;

  const CompleteUserProfileState({
    this.academicCertificateImage,
    this.idProofImage,
    this.medicalLicenseImage,
    this.professionalPhoto,
  });

  CompleteUserProfileState copyWith({
    XFile? academicCertificateImage,
    XFile? idProofImage,
    XFile? medicalLicenseImage,
    XFile? professionalPhoto,
  }) {
    return CompleteUserProfileState(
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


