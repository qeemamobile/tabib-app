import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/routes/routes.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme= context.appTheme;
    return  Scaffold(
      body: Stack(
        children: [
          Positioned(
            left:0,
            top:60,
            child: CustomImageView(
              imagePath: AssetsManager.alba,
            )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 193,),
                  CustomImageView(
                    imagePath: AssetsManager.logo,
                  ),
                  const SizedBox(height: 36,),
                  Text("auth.welcome.title".tr(),style: theme.medium20.copyWith(fontWeight: FontWeight.w700),),
                  const SizedBox(height: 20,),
                   Expanded(child: Text("auth.welcome.description".tr(),
                   textAlign: TextAlign.center,
                   style: theme.medium16.copyWith(fontWeight: FontWeight.bold,color: theme.textColor300),)
                   
                   
                   ),
                   Spacer(),
                   ElevatedButton(
                     onPressed: () {
                       Navigator.pushNamed(context, AppRoutes.loginView);
                     },
                     child: Text("auth.welcome.loginButton".tr()),
                   ),
                   OutlinedButton(
                     onPressed: () {
                       Navigator.pushNamed(context, AppRoutes.signUpView);
                     },
                     child: Text("auth.welcome.createAccountButton".tr()),
                   ),
                   TextButton(
                     onPressed: () {},
                     child: Text("auth.welcome.continueAsGuestButton".tr()),
                   ),
                   SizedBox(height: 10,),
                ],
              ),
            )
            
        ],
      ),
    );
  }
}