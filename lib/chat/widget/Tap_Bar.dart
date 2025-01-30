import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_colors.dart';

class TapBar extends StatelessWidget {
  const TapBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: AppColors.primaryColor,
      controller: _tabController,
      tabs: [
        Tab(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/chat.png',
                width: 30,
                height: 35,
              ),
              SizedBox(width: 10),
              Text('Chats', style: TextStyle(fontSize: 20, color: Colors.white)),
            ],
          ),
        ),
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/group-chat.png',
                width: 30,
                height: 35,
              ),
              SizedBox(width: 10),
              Text('Groups', style: TextStyle(fontSize: 20, color: Colors.white)),
            ],
          ),
        ),
        // إضافة التبويب الجديد
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/live.png', // تأكد من إضافة صورة لرمز "Live Room"
                width: 30,
                height: 35,
              ),
              SizedBox(width: 10),
              Text('Live ', style: TextStyle(fontSize: 20, color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
