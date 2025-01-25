import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/custom_app_bar.dart';
import 'package:graduation_project/login_page/widget/Login_Body_Detiles.dart';

class LoginBodyView extends StatelessWidget {
  const LoginBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        // vertical: 20,
      ),
      child: Scaffold( 
        appBar: buildAppBar(context, title: 'تسجيل الدخول'),
        
        body: LoginBodyDetiles(),
      ),
    );
  }
}

