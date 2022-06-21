import 'package:flutter/material.dart';
import 'package:masoud_oil/home_page.dart';
import 'package:masoud_oil/splash_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String mainRoute = "/main";
}

class RoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return noRouteDefined();
    }
  }

  static Route<dynamic> noRouteDefined() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('No route defined '),
        ),
      ),
    );
  }
}
