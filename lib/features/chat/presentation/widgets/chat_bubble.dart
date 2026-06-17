import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final String time;
  final bool isMe;

  const ChatBubble({
    super.key,
    required this.message,
    required this.time,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.75,
            ),
            decoration: BoxDecoration(
              color: isMe ? theme.primaryColor : const Color(0xFFF2FAF9),
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
                bottomLeft: isMe ? const Radius.circular(20) : Radius.zero,
                bottomRight: isMe ? Radius.zero : const Radius.circular(20),
              ),
            ),
            child: Text(
              message,
              style: theme.regular14.copyWith(
                color: isMe ? Colors.white : theme.textColor600,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            time,
            style: theme.regular12.copyWith(color: theme.textColor200),
          ),
        ],
      ),
    );
  }
}
