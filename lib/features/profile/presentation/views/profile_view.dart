import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/constant/assets_manager.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/utilities/custom_image_view.dart';
import 'package:tabib_app/features/profile/presentation/views/doc/doc_profile_content.dart';
import 'package:tabib_app/features/profile/presentation/views/user/user_profile_content.dart';
import 'package:tabib_app/features/profile/presentation/widgets/profile_menu_item.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final role ="doc";
    final theme = context.appTheme;

    return SingleChildScrollView(
      child: role=="doc"?DocProfileContent():UserProfileContent()
    );
  }
}
