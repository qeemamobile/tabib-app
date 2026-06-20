import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabib_app/core/routes/routes.dart';
import 'package:tabib_app/features/home/presentation/views/user/user_content.dart';
import 'package:tabib_app/features/layout/view_model/layout_view_model.dart';

import '../widgets/custom_app_bar_profile.dart';
import 'doc/doc_content.dart';

class HomeView extends StatelessWidget {
  final String role;
  const HomeView({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarProfile(
          title: 'home.appBar.title',
          subTitle: "home.appBar.subtitle",
          onMessageClicked: () {
            Navigator.pushNamed(context, AppRoutes.chatListView);
          },
          onNotificationClicked: () {
            Navigator.pushNamed(context, AppRoutes.notificationView);
          },
          onProfileImageClicked: () {
            context.read<LayoutViewModel>().changeIndex(3);
          },
        ),
        Expanded(
          child: (role == "user") ? const UserContent() : const DocContent(),
        ),
      ],
    );
  }
}
