import 'package:flutter/material.dart';
import 'package:graduation_project/chat/widget/bubble_chat.dart';
import 'package:graduation_project/chat/widget/chat_controller.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:provider/provider.dart';

class ChatDetails extends StatelessWidget {
  final String userName;
  final String userIcon;

  const ChatDetails({super.key, required this.userName, required this.userIcon});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatController(),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: AppColors.primaryColor,
          elevation: 5,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(userIcon),
              ),
              SizedBox(width: 20),
              Text(userName, style: TextStyle(color: Colors.white)),
              Spacer(),
              IconButton(icon: Icon(Icons.video_call, color: Colors.white), onPressed: () {}),
              IconButton(icon: Icon(Icons.call, color: Colors.white), onPressed: () {}),
            ],
          ),
        ),
        body: SafeArea(
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
                          child: TextField(
                            controller: chatController.messageController,
                            decoration: InputDecoration(
                              hintText: 'Type a message...',
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.send),
                          onPressed: () {
                            chatController.sendMessage(
                              senderId: chatController.currentUserId,
                              receiverId: chatController.otherUserId,
                              message: chatController.messageController.text,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
