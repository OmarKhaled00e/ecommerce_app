import 'package:ecommerce_app/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountItem extends StatelessWidget {
  const AccountItem({super.key, this.title, this.iconPath, this.onTap});
  final String? title;
  final String? iconPath;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 8),
      child: InkWell(
        onTap: onTap ?? () {},
        child: Row(
          children: [
            Row(
              children: [
                iconPath == null
                    ? SizedBox.shrink()
                    : Image.asset(iconPath!, width: 25.sp, height: 25.sp),
                SizedBox(width: 8.w),
                Text(title ?? '', style: TextStyles.textProduct16Regular),
              ],
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 16.sp, color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}
