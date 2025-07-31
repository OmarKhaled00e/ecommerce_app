import 'package:ecommerce_app/core/style/app_colors.dart';
import 'package:ecommerce_app/core/style/app_text_styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const routName = 'RegisterScreen';
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fromKey = GlobalKey<FormState>();
  late TextEditingController fullName;
  late TextEditingController userName;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  @override
  void initState() {
    userName = TextEditingController();
    password = TextEditingController();
    fullName = TextEditingController();
    confirmPassword = TextEditingController();
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
                    width: 262.w,
                    child: Text(
                      'Create an account',
                      style: TextStyles.textTitle32SemiBold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    width: 264.w,
                    child: Text(
                      'Let’s create your account.',
                      style: TextStyles.text16Grey,
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Text('Full Name', style: TextStyles.text16Mediuam),
                  SizedBox(height: 4.h),
                  CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your fullName';
                      }
                      return null;
                    },
                    controller: fullName,
                    hintText: 'Enter your fullName',
                    style: TextStyles.hintText16Grey,
                  ),
                  SizedBox(height: 16.h),
                  Text('User Name', style: TextStyles.text16Mediuam),
                  SizedBox(height: 4.h),
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
                  SizedBox(height: 4.h),
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
                  SizedBox(height: 16.h),
                  Text('Confirm Password', style: TextStyles.text16Mediuam),
                  SizedBox(height: 4.h),
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
                    controller: confirmPassword,
                    hintText: 'Enter your password',
                    style: TextStyles.hintText16Grey,
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.grey,
                      size: 20.sp,
                    ),
                  ),

                  SizedBox(height: 42.h),
                  CustomButton(
                    onPressed: () {
                      if (fromKey.currentState!.validate()) {}
                    },
                    text: 'Create Account',
                  ),
                  Spacer(),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account?',
                          style: TextStyles.text16Grey,
                          children: [
                            TextSpan(
                              text: ' Log In',
                              style: TextStyles.text16Mediuam,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
