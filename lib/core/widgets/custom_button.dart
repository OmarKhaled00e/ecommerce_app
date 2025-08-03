import 'package:ecommerce_app/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.text,
    this.color,
    this.width,
    this.height,
    this.bordersRadius,
    this.textColor,
    this.onPressed,
    this.fontSize,
    this.icon,
    this.iconRight,
  });
  final String? text;
  final Color? color;
  final Color? textColor;
  final double? width;
  final double? fontSize;
  final Widget? icon;
  final Widget? iconRight;
  final double? height;
  final double? bordersRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon != null ? icon! : SizedBox.shrink(),
          icon != null ? SizedBox(width: 8.w) : SizedBox.shrink(),
          Text(
            text ?? ' ',
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: fontSize ?? 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          iconRight != null ? SizedBox(width: 8.w) : SizedBox.shrink(),
          iconRight != null ? iconRight! : SizedBox.shrink(),
        ],
      ),
    );
  }
}
