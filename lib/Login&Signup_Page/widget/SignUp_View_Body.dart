import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';
import 'package:graduation_project/core/widgets/custom_check_box.dart';
import 'package:graduation_project/Login&Signup_Page/widget/custom_text_field.dart';
import 'package:graduation_project/Login&Signup_Page/widget/have_an_account_widget.dart';
import 'package:graduation_project/Login&Signup_Page/widget/terms_and_conditions.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  // متغير لتخزين حالة الـ CheckBox
  bool isCheckBoxChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFormField(
              hintText: 'الاسم الكامل',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
              suffixIcon: const Icon(Icons.email),
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.emailAddress,
              suffixIcon: const Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                // CustomCheckBox مع التحديث
                CustomCheckBox(
                  isChecked: isCheckBoxChecked,
                  onChecked: (value) {
                    setState(() {
                      isCheckBoxChecked = value; // تحديث حالة الـ CheckBox
                    });
                  },
                ),
                const SizedBox(
                  width: 16,
                ),
                TermsAndConditionsWidgetState(),
              ],
            ),
            const SizedBox(height: 30),
            CustomButton(
              onPressed: () {},
              text: 'إنشاء حساب جديد',
            ),
            const SizedBox(height: 26),
            HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
