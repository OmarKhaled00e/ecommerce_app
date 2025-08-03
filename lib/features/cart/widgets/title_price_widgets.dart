import 'package:ecommerce_app/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitlePriceWidgets extends StatelessWidget {
  const TitlePriceWidgets({super.key, required this.title, required this.price});
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Text(title , style: TextStyles.text16Grey,),
          Spacer(),
          Text(price , style: TextStyles.text16Mediuam,),
        ],
      ),
    );
  }
}




class TitlePrice extends StatelessWidget {
  const TitlePrice({super.key, required this.title, required this.price});
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Text(title , style: TextStyles.text16Mediuam,),
          Spacer(),
          Text(price , style: TextStyles.text16Grey,),
        ],
      ),
    );
  }
}




