import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabib_app/core/di/service_locator.dart';
import 'package:tabib_app/core/routes/routes.dart';
import 'package:tabib_app/features/auth/presentation/view/complete_profile_view.dart';
import 'package:tabib_app/features/auth/presentation/view/login_view.dart';
import 'package:tabib_app/features/auth/presentation/view/role_view.dart';
import 'package:tabib_app/features/auth/presentation/view/sign_up_view.dart';
import 'package:tabib_app/features/auth/presentation/view/welcome_view.dart';
import 'package:tabib_app/features/auth/presentation/view_model/complete_profile_cubit.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.welcomeView:
        return MaterialPageRoute(builder: (context) => const WelcomeView());
      case AppRoutes.loginView:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case AppRoutes.signUpView:
        return MaterialPageRoute(builder: (context) => const SignUpView());
      case AppRoutes.roleView:
        return MaterialPageRoute(builder: (context) => const RoleView());
      case AppRoutes.completeProfileView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<CompleteProfileCubit>(),
            child: const CompleteProfileView(),
          ),
        );
      default:
        return null;
    }
  }
}
