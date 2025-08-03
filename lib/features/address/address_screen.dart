import 'package:ecommerce_app/core/style/app_colors.dart';
import 'package:ecommerce_app/core/style/app_text_styles.dart';
import 'package:ecommerce_app/core/style/assets.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/account/widgets/account_item.dart';
import 'package:ecommerce_app/features/address/widgets/address_item.dart';
import 'package:ecommerce_app/features/cart/widgets/cart_item.dart';
import 'package:ecommerce_app/features/cart/widgets/title_price_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});
  static const routeName = 'AddressScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address'),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Container(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Divider(),
            SizedBox(height: 20.h),
            Text('Saved Address', style: TextStyles.textProduct16SemiBuld),
            SizedBox(height: 24.h),
            Expanded(
              child: ListView(
                children: [
                  AddressItem(
                    address: 'Home',
                    addressDetails: '925 S Chugach St #APT 10, Alas...',
                  ),
                  AddressItem(
                    address: 'Home',
                    addressDetails: '925 S Chugach St #APT 10, Alas...',
                  ),
                  AddressItem(
                    address: 'Home',
                    addressDetails: '925 S Chugach St #APT 10, Alas...',
                  ),
                  AddressItem(
                    address: 'Home',
                    addressDetails: '925 S Chugach St #APT 10, Alas...',
                  ),
                  AddressItem(
                    address: 'Home',
                    addressDetails: '925 S Chugach St #APT 10, Alas...',
                  ),
                  AddressItem(
                    address: 'Home',
                    addressDetails: '925 S Chugach St #APT 10, Alas...',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
