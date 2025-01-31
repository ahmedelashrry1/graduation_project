import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/chat/widget/chat_controller.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:graduation_project/core/widgets/chat_body.dart';
import 'package:provider/provider.dart';

class ChatDetails extends StatelessWidget {
  final String userName;
  final String userIcon;

  const ChatDetails(
      {super.key, required this.userName, required this.userIcon});

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
              IconButton(
                  icon: FaIcon(FontAwesomeIcons.video, color: Colors.white),
                  onPressed: () {}),
              IconButton(
                  icon: FaIcon(FontAwesomeIcons.phone, color: Colors.white),
                  onPressed: () {}),
            ],
          ),
        ),
        body: ChatBody(),
      ),
    );
  }
}
