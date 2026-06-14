import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';
import 'package:tabib_app/core/utilities/custom_text_form_filed.dart';
import 'package:tabib_app/features/auth/presentation/widgets/lang_select.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
              child: SingleChildScrollView(
                child: Column(
                  spacing: 8,
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
                        "auth.signUp.title".tr(),
                        style: theme.medium20.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "auth.signUp.description".tr(),
                      textAlign: TextAlign.right,
                      style: theme.medium16.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.textColor300,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildHeaderAndTextFormField(
                      context: context,
                      titleKey: "auth.signUp.name",
                      hintKey: "auth.signUp.enterName",
                    ),
                    _buildHeaderAndTextFormField(
                      context: context,
                      titleKey: "auth.signUp.phoneNumber",
                      hintKey: "auth.signUp.enterPhone",
                    ),
                    _buildHeaderAndTextFormField(
                      context: context,
                      titleKey: "auth.signUp.email",
                      hintKey: "auth.signUp.enterEmail",
                    ),
        
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "auth.signUp.languageLabel".tr(),
                        style: theme.bold18.copyWith(fontSize: 16),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "auth.signUp.languageDescription".tr(),
                        style: theme.medium13.copyWith(
                          color: theme.textColor200,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    const SizedBox(height: 20),
        
                    LanguageSelector(),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("auth.signUp.signUpButton".tr()),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderAndTextFormField({
    required BuildContext context,
    required String titleKey,
    required String hintKey,
  }) {
    final theme = context.appTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Text(
            titleKey.tr(),
            style: theme.bold18.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
            textAlign: TextAlign.right,
          ),
        ),
        const SizedBox(height: 10),
        CustomTextFormField(
          hintText: hintKey.tr(),
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }
}
