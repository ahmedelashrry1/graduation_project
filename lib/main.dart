import 'package:flutter/material.dart';
import 'package:graduation_project/login_page/LoginView.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'cairo',
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginView(),
    );
  }
}

