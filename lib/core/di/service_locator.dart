import 'package:get_it/get_it.dart';
import 'package:tabib_app/core/app_services/image_picker_services.dart';
import 'package:tabib_app/features/auth/presentation/view_model/complete_profile_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Services
  getIt.registerLazySingleton<ImagePickerServices>(() => ImagePickerServices());

  // Cubits
  getIt.registerLazySingleton<CompleteProfileCubit>(
    () => CompleteProfileCubit(getIt<ImagePickerServices>()),
  );
}
