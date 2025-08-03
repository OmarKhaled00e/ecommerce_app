import 'package:ecommerce_app/core/style/app_colors.dart';
import 'package:ecommerce_app/core/style/app_text_styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/features/home/widgets/category_item.dart';
import 'package:ecommerce_app/features/home/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 28.h),
          SizedBox(
            width: 335.w,
            child: Text('Discover', style: TextStyles.textTitle32SemiBold),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              CustomTextField(width: 270.w, hintText: 'Search for clothes...'),
              SizedBox(width: 8),
              Container(
                width: 56.w,
                height: 56.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(Icons.filter_list),
              ),
            ],
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryItem(categoryName: 'All'),
                CategoryItem(categoryName: 'All'),
                CategoryItem(categoryName: 'All'),
                CategoryItem(categoryName: 'All'),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.sp,
                crossAxisSpacing: 16.sp,
                childAspectRatio: 0.8,
              ),
              children: [
                ProductItem(title: 'shose', price: '1150\$'),
                ProductItem(title: 'shose', price: '1150\$'),
                ProductItem(title: 'shose', price: '1150\$'),
                ProductItem(title: 'shose', price: '1150\$'),
                ProductItem(title: 'shose', price: '1150\$'),
                ProductItem(title: 'shose', price: '1150\$'),
                ProductItem(title: 'shose', price: '1150\$'),
                ProductItem(title: 'shose', price: '1150\$'),
                ProductItem(title: 'shose', price: '1150\$'),
                ProductItem(title: 'shose', price: '1150\$'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
