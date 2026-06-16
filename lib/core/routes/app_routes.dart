import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabib_app/core/di/service_locator.dart';
import 'package:tabib_app/core/routes/routes.dart';
import 'package:tabib_app/features/auth/presentation/view/doc/complete_doc_profile_view.dart';
import 'package:tabib_app/features/auth/presentation/view/login_view.dart';
import 'package:tabib_app/features/auth/presentation/view/role_view.dart';
import 'package:tabib_app/features/auth/presentation/view/sign_up_view.dart';
import 'package:tabib_app/features/auth/presentation/view/welcome_view.dart';
import 'package:tabib_app/features/auth/presentation/view_model/doc/complete_doc_profile_cubit.dart';
import '../../features/auth/presentation/view/user/complete_user_profile_view.dart';
import '../../features/auth/presentation/view_model/user/complete_user_profile_cubit.dart';
import '../../features/layout/bottom_nav_bar.dart';

enum RoleAccount { user, doc }

class Routes {
  static final RoleAccount role = RoleAccount.user;
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
        case AppRoutes.mainLayoutView:
        return MaterialPageRoute(builder: (context) =>  MainLayout(
          role: role.toString(),
        ));
      case AppRoutes.completeProfileView:
        switch (role) {
          case RoleAccount.user:
            return MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) => getIt<CompleteUserProfileCubit>(),
                child: const CompleteUserProfileView(),
              ),
            );
          case RoleAccount.doc:
            return MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) => getIt<CompleteDocProfileCubit>(),
                child: const CompleteDocProfileView(),
              ),
            );
        }

      default:
        return null;
    }
  }
}
