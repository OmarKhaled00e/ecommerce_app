
import 'package:ecommerce_app/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.width, this.isPassword, this.controller, this.validator, this.style,
  });
  final String? hintText;
  final double? width;
  final Widget? suffixIcon;
  final TextStyle? style;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: isPassword ?? false,
        autofocus: false,
        cursorColor: AppColors.primaryColor,
        decoration: InputDecoration(
          hint: Text(hintText ?? ''),
          hintStyle: style,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 18.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Color(0xFFF7F8F9), width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.primaryColor, width: 1.w),
          ),
          errorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.red, width: 1.w),
          ),
          focusedErrorBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.red, width: 1.w),
          ),
          filled: true,
          fillColor: Color(0xFFE8ECF4),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
