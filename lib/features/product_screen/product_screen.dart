import 'package:ecommerce_app/core/style/app_colors.dart';
import 'package:ecommerce_app/core/style/app_text_styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  static const routeName = 'ProductScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Container(
                    width: 341.w,
                    height: 341.h,
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text('T Shirt ', style: TextStyles.textPrduct24Black),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 18.sp),
                      SizedBox(width: 2.w),
                      Text(
                        '4.5/5',
                        style: TextStyles.text16Mediuam.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Text('(45 reviews)', style: TextStyles.text16Grey),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Blue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of Them',
                    style: TextStyles.text16Grey,
                  ),
                  SizedBox(height: 150.h,),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,

            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Divider(),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price', style: TextStyles.text16Grey),
                          SizedBox(height: 4.h),
                          Text('1120\$', style: TextStyles.textPrduct24Black),
                        ],
                      ),
                      SizedBox(width: 16),
                      CustomButton(
                        icon: Icon(
                          Icons.shopping_cart_rounded,
                          color: Colors.white,
                          size: 16.sp,
                        ),
                        width: MediaQuery.of(context).size.width * .5,
                        text: 'Add To Cart',
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
