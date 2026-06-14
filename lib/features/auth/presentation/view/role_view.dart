import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/routes/routes.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';
import 'package:tabib_app/features/auth/presentation/widgets/role_widget.dart';

class RoleView extends StatelessWidget {
  const RoleView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 60,
              child: CustomImageView(imagePath: AssetsManager.alba),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 66),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CustomImageView(imagePath: AssetsManager.logo),
                  ),
                  const SizedBox(height: 36),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "auth.role.title".tr(),
                      style: theme.medium20.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "auth.role.description".tr(),
                    textAlign: TextAlign.right,
                    style: theme.medium16.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.textColor300,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "auth.role.accountType".tr(),
                      style: theme.bold18.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                    const SizedBox(height: 10),
                  RoleSelectionWidget(),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("auth.login.loginButton".tr()),
                  ),
                    const SizedBox(height: 8),
                    Center(child: HaveAccount())
                    
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
                Navigator.pushNamedAndRemoveUntil(context, AppRoutes.loginView, (route) => false);
              },
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}