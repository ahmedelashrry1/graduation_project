import 'package:flutter/material.dart';
import 'package:graduation_project/chat/model/message_model.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChatController extends ChangeNotifier {
  late IO.Socket socket;
  final List<Messages> _messages = [];
  final TextEditingController messageController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  final String currentUserId = 'user123'; // معرف المستخدم الحالي
  List<Messages> get messages => _messages;

  ChatController() {
    _connectToSocket();
  }

  void _connectToSocket() {
    socket = IO.io('http://localhost:3000', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': true,
    });

    socket.onConnect((_) {
      print('Connected to Socket.IO server');
    });

    socket.on('receive_message', (data) {
      _messages.add(Messages(
        message: data['message'],
        senderId: data['senderId'],
        receiverId: data['receiverId'],
      ));
      notifyListeners();
      _scrollToBottom();
    });

    socket.onDisconnect((_) => print('Disconnected from server'));
  }

  void sendMessage({required String message, required String receiverId, required String senderId}) {
    if (message.isNotEmpty) {
      final data = {
        'message': message,
        'senderId': currentUserId,
        'receiverId': receiverId,
      };

      socket.emit('send_message', data);

      _messages.add(Messages(
        message: message,
        senderId: currentUserId,
        receiverId: receiverId,
      ));

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
    socket.dispose();
    messageController.dispose();
    scrollController.dispose();
    super.dispose();
  }
}
