import 'package:flutter/material.dart';
import 'package:graduation_project/chat/widget/Chat_Input.dart';
import 'package:graduation_project/chat/widget/bubble_chat.dart';
import 'package:graduation_project/chat/widget/chat_controller.dart';
import 'package:provider/provider.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({
    super.key,
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
                    bool isCurrentUser = message.senderId == chatController.currentUserId;
                    return ChatBubble(message: message.message, isCurrentUser: isCurrentUser);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ChatInput(
                        messageController: chatController.messageController,
                        onSend: (String message) => chatController.sendMessage(message: message, receiverId: '', senderId: ''),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}