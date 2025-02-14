
 import 'package:endo_trainer/core/routes/routes_names.dart';
import 'package:flutter/material.dart';

import '../../presentations/splash/splash_view.dart';
import '../app_colors.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());

      // case RoutesName.login:
      //   return MaterialPageRoute(builder: (BuildContext context) => const LoginSignupView());

      default:
        return MaterialPageRoute(builder: (_) {
          return const NoRouteFound();
        });
    }
  }
}

class NoRouteFound extends StatelessWidget {
  const NoRouteFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Text(
          'No route defined',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}