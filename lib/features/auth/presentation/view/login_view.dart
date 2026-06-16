import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';
import 'package:tabib_app/core/utilities/custom_text_form_filed.dart';

import 'otp_bottom_sheet.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  void _showOtpBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows the sheet to resize when keyboard pops up
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return const OtpBottomSheet();
      },
    );
  }
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
              child: SingleChildScrollView(
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
                      "auth.login.welcomeBack".tr(),
                      style: theme.medium20.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "auth.login.subtitle".tr(),
                      style: theme.medium16.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.textColor300,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "auth.login.phoneNumber".tr(),
                      style: theme.bold18.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      hintText: "auth.login.enterPhoneNumber".tr(),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                           _showOtpBottomSheet(context);
                        },
                        child: Text("auth.login.loginButton".tr()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
