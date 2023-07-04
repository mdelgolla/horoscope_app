import 'package:flutter/material.dart';
import 'package:horoscope_app/navigation/route_names.dart';
import 'package:horoscope_app/screens/home_screen/home_screen.dart';
import 'package:horoscope_app/screens/login_screen.dart';
import 'package:horoscope_app/screens/register_screen.dart';

class NavigationRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RouteNames.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case RouteNames.register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case RouteNames.homePage:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return null;
    }
  }

  static void goToLoginPage(BuildContext context) {
    Navigator.pushNamed(context, RouteNames.login);
  }

  static void goToRegisterPage(BuildContext context) {
    Navigator.pushNamed(context, RouteNames.register);
  }

  static void goToHomePage(BuildContext context) {
    Navigator.pushNamed(context, RouteNames.homePage);
  }
}
