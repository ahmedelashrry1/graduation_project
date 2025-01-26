import 'package:flutter/material.dart';
import 'package:graduation_project/Login&Signup_Page/widget/custom_text_field.dart';
import 'package:graduation_project/core/utils/app_text_styles.dart';
import 'package:graduation_project/core/widgets/custom_app_bar.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

class ForgetPassoward extends StatelessWidget {
  const ForgetPassoward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'نسيان كلمة المرور '),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            SizedBox(
              height: 24,
            ),
            Text.rich(
              TextSpan(
                text: 'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.  ',
                style: TextStyles.bold16.copyWith(
                  color: const Color(0xFF616A6B),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Column(
                children: [
                  CustomTextFormField(
                    hintText: 'رقم الهاتف',
                    textInputType: TextInputType.phone,
                    suffixIcon: const Icon(Icons.phone),
                  ),
                  const SizedBox(height: 30),
                  CustomButton(onPressed: () {  }, text: 'نسيت كلمة المرور',),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}