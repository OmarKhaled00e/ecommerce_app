import 'package:ecommerce_app/core/style/app_text_styles.dart';
import 'package:ecommerce_app/core/style/assets.dart';
import 'package:ecommerce_app/features/account/widgets/account_item.dart';
import 'package:ecommerce_app/features/address/address_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  static const routeName = 'AccountScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Container(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          SizedBox(height: 20.h),
          AccountItem(
            title: 'My Orders',
            iconPath: Assets.imagesBox,
            onTap: () {},
          ),
          Divider(thickness: 8, color: Color(0xFFAAAAAA)),
          AccountItem(
            title: 'My Details',
            iconPath: Assets.imagesDetails,
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          AccountItem(
            title: 'Address Book',
            iconPath: Assets.imagesAddress,
            onTap: () {
              Navigator.pushNamed(context, AddressScreen.routeName);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          AccountItem(
            title: 'FAQs',
            iconPath: Assets.imagesQuestion,
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          AccountItem(
            title: 'Help Center',
            iconPath: Assets.imagesHeadphones,
            onTap: () {},
          ),
          SizedBox(height: 16.h),
          Divider(thickness: 8, color: Color(0xFFE6E6E6)),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(Icons.logout, color: Colors.redAccent, size: 25.w),
                  SizedBox(width: 8.w),
                  Text(
                    'Logout',
                    style: TextStyles.textProduct16Regular.copyWith(
                      color: Color(0xFFED1010),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
