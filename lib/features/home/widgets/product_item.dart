import 'package:ecommerce_app/core/style/app_colors.dart';
import 'package:ecommerce_app/core/style/app_text_styles.dart';
import 'package:ecommerce_app/features/product_screen/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.title, required this.price});
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ProductScreen.routeName);
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Container(
                width: 161.w,
                height: 150.h,
                color: AppColors.grey,
              ),
            ),
            SizedBox(height: 8.h),
            Text(title, style: TextStyles.textProduct16SemiBuld),
            SizedBox(height: 8.h),
            Text(price, style: TextStyles.textProduct12Grey),
          ],
        ),
      ),
    );
  }
}
