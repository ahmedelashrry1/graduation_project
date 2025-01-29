import 'package:flutter/material.dart';
import 'package:graduation_project/chat/widget/chat_view_body.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatViewBody(),
    );
  }
}
