import 'package:ecommerce_app/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Container(
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey , width: 0.5 ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 83.w,
              height: 79.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.grey,
              ),
              
            ),
            SizedBox(height: 16.h,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Regular Fit Slogan' , style: TextStyles.textProduct14SemiBuld,),
                      Spacer(),
                      Icon(Icons.delete , color: Colors.red,),
                      
                    ],
                  ),
                SizedBox(height: 30.h,),
                  Row(
                    children: [
                      Text(
                        '1200\$',
                        style: TextStyles.textProduct14SemiBuld,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey, width: 0.5),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Icon(Icons.add , size: 16.sp,),
                            ),
                          ),
                          Text(
                            '1',
                            style: TextStyles.textProduct12Madiuam,
                          ),
                          SizedBox(width: 8.w,),
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey, width: 0.5),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Icon(Icons.remove , size: 16.sp,),
                            ),
                          ),
                          
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}