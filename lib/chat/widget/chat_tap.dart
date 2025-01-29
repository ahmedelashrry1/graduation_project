import 'package:flutter/material.dart';
import 'package:graduation_project/chat/widget/ditails_chat.dart';
import 'package:graduation_project/core/utils/app_text_styles.dart';

class ChatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15, // عدد المحادثات
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            child: Image.asset('assets/images/student.png'),
          ),
          title: Text('احمد العشري',
              style: TextStyles.bold16.copyWith(color: Colors.black)),
          subtitle: Text('عامل اي يعم'),
          onTap: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DitailsChat(),
                    ),
                  );
          },
        );
      },
    );
  }
}
