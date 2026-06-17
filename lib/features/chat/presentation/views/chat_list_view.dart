import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';
import 'package:tabib_app/core/routes/routes.dart';
import 'package:tabib_app/features/chat/presentation/widgets/chat_item.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        title: Text('layout.navBar.messages'.tr(), style: theme.bold18),
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: 5,
        separatorBuilder: (context, index) => Divider(
          color: theme.textColor100.withOpacity(0.3),
          indent: 80,
          endIndent: 20,
        ),
        itemBuilder: (context, index) {
          return ChatItem(
            name: 'appointments.drName'.tr(),
            lastMessage: 'Lorem ipsum is placeholder text commonly used...',
            time: '09:25 AM',
            unreadCount: index == 0 ? 2 : 0,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.chatDetailsView);
            },
          );
        },
      ),
    );
  }
}
