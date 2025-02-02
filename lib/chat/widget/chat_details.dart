import 'package:flutter/material.dart';
import 'package:graduation_project/chat/widget/chat_controller.dart';
import 'package:graduation_project/chat/widget/chat_body.dart';
import 'package:provider/provider.dart';

class ChatDetails extends StatelessWidget {
  final String userName;
  final String userIcon;
  final String currentUserId; // ✅ معرف المستخدم الحالي
  final String receiverId;    // ✅ معرف المستقبل

  const ChatDetails({
    super.key,
    required this.userName,
    required this.userIcon,
    required this.currentUserId, // ✅
    required this.receiverId,    // ✅
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatController(),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(userIcon),
              ),
              SizedBox(width: 20),
              Text(userName),
            ],
          ),
        ),
        body: ChatBody(
          currentUserId: currentUserId, // ✅ تمرير معرف المستخدم الحالي
          receiverId: receiverId,       // ✅ تمرير معرف المستقبل
        ),
      ),
    );
  }
}
