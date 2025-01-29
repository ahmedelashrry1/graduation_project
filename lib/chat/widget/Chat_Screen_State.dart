import 'package:flutter/material.dart';
import 'package:graduation_project/chat/widget/Tap_Bar.dart';
import 'package:graduation_project/chat/widget/chat_tap.dart';
import 'package:graduation_project/chat/widget/group_tap.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:graduation_project/core/utils/app_text_styles.dart';

class  ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showNotification = true;
  bool showBackButton = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // التخلص من التاب كنترولر لتفادي مشاكل التسريب
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          " Chat Room",
          textAlign: TextAlign.center,
          style: TextStyles.bold19.copyWith(color: Colors.white),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TapBar(tabController: _tabController),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ChatsTab(), // محتوى تبويب المحادثات
          GroupsTab(), // محتوى تبويب الجروبات
        ],
      ),
    );
  }
}




