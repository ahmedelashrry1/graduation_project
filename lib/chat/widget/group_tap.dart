import 'package:flutter/material.dart';

class GroupsTab extends StatelessWidget {
  const GroupsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // عدد الجروبات
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.group),
          ),
          title: Text('Group $index'),
          subtitle: Text('Last activity in Group $index'),
          onTap: () {
            
          },
        );
      },
    );
  }
}