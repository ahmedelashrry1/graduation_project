import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  final TextEditingController messageController;
  final Function(String) onSend; // تأكد من أن onSend يتوقع معطى من النوع String

  ChatInput({
    required this.messageController,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: messageController,
              decoration: InputDecoration(hintText: 'Type a message...'),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // عند الضغط على زر الإرسال، يتم تمرير الرسالة إلى onSend
              onSend(messageController.text);
            },
          ),
        ],
      ),
    );
  }
}
