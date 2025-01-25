import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/custom_app_bar.dart';

class LoginBodyView extends StatelessWidget {
  const LoginBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: buildAppBar(context, title: 'تسجيل الدخول'),
      body: Center(
        child: Text('Hello, World!World!'),
      ),
    );
  }
}