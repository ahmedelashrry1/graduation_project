import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_colors.dart';

class DitailsChat extends StatelessWidget {
  const DitailsChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        
        child: BubbleSpecialThree(
          text: 'Added iMessage shape bubbles ',
          color: AppColors.primaryColor,
          tail: false,
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 16
          ),
        ),
      )
    );
  }
}