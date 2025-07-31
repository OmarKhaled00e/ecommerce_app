import 'package:ecommerce_app/features/auth/login_screen.dart';
import 'package:ecommerce_app/features/auth/register_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case RegisterScreen.routName:
      return MaterialPageRoute(builder: (context) => const RegisterScreen());
    default:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('Page not found'))),
        settings: settings,
      );
  }
}
