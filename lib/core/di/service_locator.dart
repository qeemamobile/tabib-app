import 'package:get_it/get_it.dart';
import 'package:tabib_app/core/app_services/image_picker_services.dart';
import 'package:tabib_app/features/auth/presentation/view_model/doc/complete_doc_profile_cubit.dart';

import '../../features/auth/presentation/view_model/user/complete_user_profile_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Services
  getIt.registerLazySingleton<ImagePickerServices>(() => ImagePickerServices());

  // Cubits
  getIt.registerLazySingleton<CompleteDocProfileCubit>(
    () => CompleteDocProfileCubit(getIt<ImagePickerServices>()),
  );
  getIt.registerLazySingleton<CompleteUserProfileCubit>(
        () => CompleteUserProfileCubit(getIt<ImagePickerServices>()),
  );
}
