import 'package:ecommerce_app/features/address/address_screen.dart';
import 'package:ecommerce_app/features/auth/login_screen.dart';
import 'package:ecommerce_app/features/auth/register_screen.dart';
import 'package:ecommerce_app/features/home/home_screen.dart';
import 'package:ecommerce_app/features/main/main_screen.dart';
import 'package:ecommerce_app/features/product_screen/product_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());

    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (context) => const HomeScreen());

    case ProductScreen.routeName:
      return MaterialPageRoute(builder: (context) => const ProductScreen());
    
    case RegisterScreen.routName:
      return MaterialPageRoute(builder: (context) => const RegisterScreen());

    case MainScreen.routeName:
      return MaterialPageRoute(builder: (context) => const MainScreen());
      
    case AddressScreen.routeName:
      return MaterialPageRoute(builder: (context) => const AddressScreen());
      
    default:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('Page not found'))),
        settings: settings,
      );
  }
}
