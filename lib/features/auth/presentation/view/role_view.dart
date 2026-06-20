import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/routes/routes.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';
import 'package:tabib_app/features/auth/presentation/widgets/role_widget.dart';

class RoleView extends StatefulWidget {
  const RoleView({super.key});

  @override
  State<RoleView> createState() => _RoleViewState();
}

class _RoleViewState extends State<RoleView> {
  String _selectedRole = 'user';

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PositionedDirectional(
              start: 0,
              top: 60,
              child: CustomImageView(imagePath: AssetsManager.alba),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 66),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CustomImageView(imagePath: AssetsManager.logo),
                  ),
                  const SizedBox(height: 36),
                  Text(
                    "auth.role.title".tr(),
                    style: theme.medium20.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "auth.role.description".tr(),
                    style: theme.medium16.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.textColor300,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "auth.role.accountType".tr(),
                    style: theme.bold18.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  RoleSelectionWidget(
                    onRoleChanged: (role) {
                      setState(() {
                        _selectedRole = role;
                      });
                    },
                  ),
                  const Spacer(),
                  SizedBox(

                    child: ElevatedButton(
                      onPressed: () {
                        // Navigating to MainLayoutView for demonstration, 
                        // usually goes to complete profile first.
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          AppRoutes.mainLayoutView,
                          (route) => false,
                          arguments: _selectedRole,
                        );
                      },
                      child: Text("auth.login.loginButton".tr()),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Center(child: HaveAccount()),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'auth.role.haveAccount'.tr(),
            style: theme.medium16,
          ),
          TextSpan(
            text: 'auth.login.loginButton'.tr(),
            style: theme.bold18.copyWith(
              color: theme.primaryColor,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamedAndRemoveUntil(
                    context, AppRoutes.loginView, (route) => false);
              },
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
