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
import 'package:tabib_app/features/chat/presentation/views/chat_details_view.dart';
import 'package:tabib_app/features/chat/presentation/views/chat_list_view.dart';
import 'package:tabib_app/features/home/presentation/views/user/search_view.dart';
import 'package:tabib_app/features/patients/presentation/views/patient_details_view.dart';
import 'package:tabib_app/features/reservations/presentation/views/create_report_view.dart';
import '../../features/auth/presentation/view/user/complete_user_profile_view.dart';
import '../../features/auth/presentation/view_model/user/complete_user_profile_cubit.dart';
import '../../features/home/presentation/views/user/doctor_details_view.dart';
import '../../features/home/presentation/views/user/see_more_specialization.dart';
import '../../features/layout/bottom_nav_bar.dart';
import '../../features/layout/view_model/layout_view_model.dart';
import '../../features/notification/presentation/views/notification_view.dart';
import '../../features/patients/presentation/views/patient_appointment_details_view.dart';
import '../../features/records/presentation/views/prescription_details_view.dart';

enum RoleAccount { user, doc }

class Routes {
  static final RoleAccount role = RoleAccount.doc;
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
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
  create: (context) => getIt<LayoutViewModel>(),
  child: MainLayout(
                  role: role.toString(),
                ),
));
      case AppRoutes.prescriptionDetailsView:
        return MaterialPageRoute(
            builder: (context) => const PrescriptionDetailsView());
      case AppRoutes.seeMoreSpecializationView:
        return MaterialPageRoute(
            builder: (context) => const SeeMoreSpecializationView());
      case AppRoutes.searchView:
        return MaterialPageRoute(builder: (context) => const SearchView());
      case AppRoutes.notificationView:
        return MaterialPageRoute(builder: (context) => const NotificationView());
      case AppRoutes.doctorDetailsView:
        return MaterialPageRoute(
            builder: (context) => const DoctorDetailsView());
      case AppRoutes.chatListView:
        return MaterialPageRoute(builder: (context) => const ChatListView());
      case AppRoutes.chatDetailsView:
        return MaterialPageRoute(
            builder: (context) => const ChatDetailsView());
      case AppRoutes.patientDetailsView:
        return MaterialPageRoute(
            builder: (context) => const PatientDetailsView());
        case AppRoutes.patientsAppointmentDetailsView:
        return MaterialPageRoute(
            builder: (context) => const PatientsAppointmentDetailsView());
      case AppRoutes.createReportView:
        return MaterialPageRoute(
            builder: (context) => const CreateReportView());
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
