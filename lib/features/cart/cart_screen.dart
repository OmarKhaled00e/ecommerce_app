
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/cart/widgets/cart_item.dart';
import 'package:ecommerce_app/features/cart/widgets/title_price_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const routeName = 'CartScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Container(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              CartItem(),
              CartItem(),
              CartItem(),
              CartItem(),
              CartItem(),
              SizedBox(height: 20.h),
              TitlePriceWidgets(title: 'Suv total ', price: '1119\$'),
              TitlePriceWidgets(title: 'VAT (16 %) ', price: '1119\$'),
              TitlePriceWidgets(title: 'Shipping Fees ', price: '1119\$'),
              SizedBox(height: 20.h),
              Divider(),
              SizedBox(height: 20.h),
              TitlePrice(title: 'Total', price: '1190 \$'),
              SizedBox(height: 20.h),
              CustomButton(
                iconRight: Icon(
                  Icons.payment,
                  color: Colors.white,
                  size: 16.sp,
                ),

                text: 'Go to Cheekout',
                onPressed: () {},
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}
