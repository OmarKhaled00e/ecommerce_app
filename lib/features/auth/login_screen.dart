import 'package:ecommerce_app/core/style/app_colors.dart';
import 'package:ecommerce_app/core/style/app_text_styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/features/auth/register_screen.dart';
import 'package:ecommerce_app/features/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = 'loginScreen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final fromKey = GlobalKey<FormState>();
  late TextEditingController userName;
  late TextEditingController password;
  @override
  void initState() {
    userName = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: fromKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 28.h),
                  SizedBox(
                    width: 335.w,
                    child: Text(
                      'Login to your account',
                      style: TextStyles.textTitle32SemiBold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    width: 264.w,
                    child: Text(
                      'It’s great to see you again.',
                      style: TextStyles.text16Grey,
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Text('User Name', style: TextStyles.text16Mediuam),
                  SizedBox(height: 8.h),
                  CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your userName';
                      }
                      return null;
                    },
                    controller: userName,
                    hintText: 'Enter your email address',
                    style: TextStyles.hintText16Grey,
                  ),
                  SizedBox(height: 16.h),
                  Text('Password', style: TextStyles.text16Mediuam),
                  SizedBox(height: 8.h),
                  CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                    controller: password,
                    hintText: 'Enter your password',
                    style: TextStyles.hintText16Grey,
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.grey,
                      size: 20.sp,
                    ),
                  ),

                  SizedBox(height: 55.h),
                  CustomButton(
                    onPressed: () {
                      if (fromKey.currentState!.validate()) {
                        Navigator.pushNamed(context, MainScreen.routeName);
                      }
                    },
                    text: 'Sign in',
                  ),
                  SizedBox(height: 265.h),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterScreen.routName);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Don’t have an account?',
                          style: TextStyles.text16Grey,
                          children: [
                            TextSpan(
                              text: 'Join',
                              style: TextStyles.text16Mediuam,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
