import 'package:flutter/material.dart';
import 'package:graduation_project/chat/widget/chat_input.dart';
import 'package:graduation_project/chat/widget/bubble_chat.dart';
import 'package:graduation_project/chat/widget/chat_controller.dart';
import 'package:provider/provider.dart';

class ChatBody extends StatelessWidget {
  final String currentUserId; // ✅ معرف المستخدم الحالي
  final String receiverId;    // ✅ معرف المستقبل

  const ChatBody({
    super.key,
    required this.currentUserId, // ✅
    required this.receiverId,    // ✅
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<ChatController>(
        builder: (context, chatController, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  controller: chatController.scrollController,
                  itemCount: chatController.messages.length,
                  itemBuilder: (context, index) {
                    final message = chatController.messages[index];
                    bool isCurrentUser = message.senderId == currentUserId;
                    return ChatBubble(
                      message: message.message,
                      isCurrentUser: isCurrentUser,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ChatInput(
                  messageController: chatController.messageController,
                  senderId: currentUserId,   // ✅ استخدام معرف المستخدم الحالي
                  receiverId: receiverId,    // ✅ استخدام معرف المستقبل
                  onSend: (String message, String senderId, String receiverId) {
                    chatController.sendMessage(
                      message: message,
                      senderId: senderId,
                      receiverId: receiverId,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
