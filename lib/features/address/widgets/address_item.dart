import 'package:ecommerce_app/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({
    super.key,
    required this.address,
    required this.addressDetails,
  });
  final String address;
  final String addressDetails;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 64.w, vertical: 16.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [Icon(Icons.place_outlined, color: Colors.grey, size: 35.sp),
          SizedBox(width: 8.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(address , style: TextStyles.textProduct14SemiBuld,),
              SizedBox(height: 8.h,),
              Text(addressDetails , style: TextStyles.text14,),
            ],
          )
          ],
        ),
      ),
    );
  }
}
