import 'dart:io';

import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:graduation_project/core/utils/app_text_styles.dart';
import 'package:graduation_project/login_page/widget/custom_text_field.dart';
import 'package:graduation_project/login_page/widget/dont_have_account_widget.dart';
import 'package:graduation_project/login_page/widget/or_divider.dart';
import 'package:graduation_project/login_page/widget/social_login_button.dart';

class LoginBodyDetiles extends StatelessWidget {
  const LoginBodyDetiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 220),
          CustomTextFormField(
            hintText: 'البريد الإلكتروني',
            textInputType: TextInputType.emailAddress,
            suffixIcon: const Icon(Icons.email),
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'كلمة المرور',
            textInputType: TextInputType.visiblePassword,
            suffixIcon: const Icon(Icons.remove_red_eye_outlined),
            obscureText: true,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'نسيت كلمة المرور؟',
                style: TextStyles.semiBold13.copyWith(
                  color: AppColors.lightPrimaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 33,
          ),
          DontHaveAnAccountWidget(),
          const SizedBox(
            height: 50,
          ),
          OrDivider(),
          const SizedBox(
            height: 21,
          ),
          SocialLoginButton(
            onPressed: () {
              // context.read<SigninCubit>().signinWithGoogle();
            },
            image: 'assets/images/google_icon.svg',
            title: 'تسجيل بواسطة جوجل',
          ),
          const SizedBox(
            height: 16,
          ),
            SocialLoginButton(
            onPressed: () {
              // context.read<SigninCubit>().signinWithFacebook();
            },
            image: 'assets/images/appl_icon.svg',
            title: 'تسجيل بواسطة ابل',
          ),
          
              const SizedBox(
                height: 16,
              ),
          SocialLoginButton(
            onPressed: () {
              // context.read<SigninCubit>().signinWithFacebook();
            },
            image: 'assets/images/facebook_icon.svg',
            title: 'تسجيل بواسطة فيسبوك',
          ),
        ],
      ),
    );
  }
  }