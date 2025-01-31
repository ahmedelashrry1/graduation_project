import 'package:flutter/material.dart';
import 'package:graduation_project/chat/model/message_model.dart';

class ChatController extends ChangeNotifier {
  final List<Messages> _messages = [];
  final TextEditingController messageController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  final String currentUserId = 'user';
  final String otherUserId = 'other';

  List<Messages> get messages => _messages;

  void sendMessage({required String senderId, required String receiverId, required String message}) {
    if (message.isNotEmpty) {
      _messages.add(Messages(message: message, senderId: senderId, receiverId: receiverId));
      messageController.clear();
      notifyListeners();
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    Future.delayed(Duration(milliseconds: 300), () {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  void dispose() {
    messageController.dispose();
    scrollController.dispose();
    super.dispose();
  }
}
