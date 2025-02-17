
 import 'package:endo_trainer/core/routes/routes_names.dart';
import 'package:endo_trainer/presentations/Trainer_document_option/trainer_document_option_view.dart';
import 'package:endo_trainer/presentations/bio/bio_view.dart';
import 'package:endo_trainer/presentations/bottom_nav_bar/bottom_nav_bar_view.dart';
import 'package:endo_trainer/presentations/country_code/country_code_view.dart';
import 'package:endo_trainer/presentations/create_new_password/create_new_passsword_view.dart';
import 'package:endo_trainer/presentations/forgot_password/forgot_password_view.dart';
import 'package:endo_trainer/presentations/home/home_view.dart';
import 'package:endo_trainer/presentations/login/login_view.dart';
import 'package:endo_trainer/presentations/onboarding/onboarding_view.dart';
import 'package:endo_trainer/presentations/otp/otp_view.dart';
import 'package:endo_trainer/presentations/signup/signup_view.dart';
import 'package:flutter/material.dart';

import '../../Trainer_passport/trainer_passport_view.dart';
import '../../presentations/splash/splash_view.dart';
import '../app_colors.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());
        case RoutesName.onboarding:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnboardingView());
        case RoutesName.countryCode:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  CountryCode());
        case RoutesName.otp:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  OtpView());
      case RoutesName.signUp:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  SignupView());
      case RoutesName.trainerDocumentOption:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  TrainerDocumentOptionView());
      case RoutesName.trainerPassport:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  TrainerPassportView());
      case RoutesName.bio:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  BioView());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  LoginView());
      case RoutesName.forgotPassword:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  ForgotPasswordView());
      case RoutesName.createNewPassword:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  CreateNewPassswordView());
      case RoutesName.bottomNavBar:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  BottomNavBarView());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  HomeView());

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