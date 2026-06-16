import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';
import '../../../../core/constant/assets_manager.dart';

class CustomAppBarProfile extends StatelessWidget {
  const CustomAppBarProfile({super.key, required this.title, required this.subTitle, this.trailing});
  final String title;
  final String subTitle;
final Widget?trailing ;
  @override
  Widget build(BuildContext context) {
    final theme= context.appTheme;
    return
      ListTile(
        contentPadding: EdgeInsets.zero,
        leading:  CircleAvatar(
          radius: 28,
         backgroundColor: theme.textColor600,
        ),

        title:  Text(
          title,
          style:theme.medium16.copyWith(fontSize:18,fontWeight: FontWeight.w700)
        ),


        subtitle: Text(
          subTitle,
          style: theme.bold12.copyWith(fontWeight: FontWeight.w600,fontSize:14,)
        ),

        trailing:trailing?? SizedBox(
          width: 80,
          child: Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(imagePath: AssetsManager.messages,
              height: 24,
              ),
              CustomImageView(imagePath: AssetsManager.notification,
                height: 24,
              ),
            ],
          ),
        ),
      );
  }
}

