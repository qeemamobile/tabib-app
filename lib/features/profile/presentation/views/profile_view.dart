import 'package:flutter/material.dart';
import 'package:tabib_app/features/profile/presentation/views/doc/doc_profile_content.dart';
import 'package:tabib_app/features/profile/presentation/views/user/user_profile_content.dart';

class ProfileView extends StatelessWidget {
  final String role;
  const ProfileView({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: role == "doctor" || role == "doc"
            ? const DocProfileContent()
            : const UserProfileContent());
  }
}
