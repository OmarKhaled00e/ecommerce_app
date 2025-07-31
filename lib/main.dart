import 'package:ecommerce_app/core/helper_functions/on_generate_routes.dart';
import 'package:ecommerce_app/features/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MealsApp());
}

class MealsApp extends StatelessWidget {
  const MealsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Meals App',
          onGenerateRoute: onGenerateRoute,
          initialRoute: LoginScreen.routName,
        );
      },
    );
  }
}
