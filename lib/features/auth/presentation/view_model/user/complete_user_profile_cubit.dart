import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/app_services/image_picker_services.dart';
import 'complete_user_profile_state.dart';

class CompleteUserProfileCubit extends Cubit<CompleteUserProfileState> {
  CompleteUserProfileCubit(this._imagePickerServices)
    : super(const CompleteUserProfileState());
  final ImagePickerServices _imagePickerServices;
  void updateAcademicCertificateImage() async{
    final academicCertificateImage= await _imagePickerServices.pickImage();
    emit(state.copyWith(academicCertificateImage: academicCertificateImage));
  }

  void updateIdProofImage() async{
    final idProofImage= await _imagePickerServices.pickImage();
    emit(state.copyWith(idProofImage: idProofImage));
  }

  void updateMedicalLicenseImage()async {
    final medicalLicenseImage= await _imagePickerServices.pickImage();
    emit(state.copyWith(medicalLicenseImage: medicalLicenseImage));
  }

  void updateProfessionalPhoto() async{
    final professionalPhoto= await _imagePickerServices.pickImage();
    emit(state.copyWith(professionalPhoto: professionalPhoto));
  }
}
