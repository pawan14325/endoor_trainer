
 import 'package:endo_trainer/core/routes/routes_names.dart';
import 'package:endo_trainer/presentations/booking/booking_details_view.dart';
import 'package:endo_trainer/presentations/booking/booking_history_view.dart';
import 'package:endo_trainer/presentations/booking/booking_request_view.dart';
import 'package:endo_trainer/presentations/booking/review_rating_view.dart';
import 'package:endo_trainer/presentations/booking/session_complete_view.dart';
import 'package:endo_trainer/presentations/booking/session_detail_view.dart';
import 'package:endo_trainer/presentations/booking/session_running_view.dart';
import 'package:endo_trainer/presentations/earning/bank_details_view.dart';
import 'package:endo_trainer/presentations/earning/earning_view.dart';
import 'package:endo_trainer/presentations/earning/withdraw_view.dart';
import 'package:endo_trainer/presentations/home/notification_view.dart';
import 'package:endo_trainer/presentations/profile/account_view.dart';
import 'package:endo_trainer/presentations/profile/bio_edit_view.dart';
import 'package:endo_trainer/presentations/profile/docuemnt_view.dart';
import 'package:endo_trainer/presentations/profile/profile_view.dart';
import 'package:endo_trainer/presentations/profile/rating_view.dart';
import 'package:endo_trainer/presentations/profile/support_view.dart';
import 'package:endo_trainer/presentations/signup/trainer_document_option_view.dart';
import 'package:endo_trainer/presentations/signup/bio_view.dart';
import 'package:endo_trainer/presentations/home/bottom_nav_bar_view.dart';
import 'package:endo_trainer/presentations/signup/country_code_view.dart';
import 'package:endo_trainer/presentations/forgot_password/create_new_passsword_view.dart';
import 'package:endo_trainer/presentations/forgot_password/forgot_password_view.dart';
import 'package:endo_trainer/presentations/home/home_view.dart';
import 'package:endo_trainer/presentations/login/login_view.dart';
import 'package:endo_trainer/presentations/onboarding/onboarding_view.dart';
import 'package:endo_trainer/presentations/signup/otp_view.dart';
import 'package:endo_trainer/presentations/signup/signup_view.dart';
import 'package:flutter/material.dart';

import '../../presentations/signup/trainer_passport_view.dart';
import '../../presentations/splash/splash_view.dart';
import '../app_colors.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      // Splash -----------------------------------------------------------------
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());
        case RoutesName.onboarding:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnboardingView());

        // Signup -----------------------------------------------------------------
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

        // Login ----------------------------------------------------------------
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  LoginView());

        // Forgot Password -----------------------------------------------------------------
      case RoutesName.forgotPassword:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  ForgotPasswordView());
      case RoutesName.createNewPassword:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  CreateNewPassswordView());

        // BottomNavBar -----------------------------------------------------------------
      case RoutesName.bottomNavBar:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  BottomNavBarView());

        // Home -----------------------------------------------------------------
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  HomeView());
      case RoutesName.notification:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  NotificationView());

        // Profile -----------------------------------------------------------------
      case RoutesName.profile:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  ProfileView());
      case RoutesName.account:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  AccountView());
      case RoutesName.bioEdit:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  BioEditView());
      case RoutesName.support:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  SupportView());
      case RoutesName.document:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  DocumentView());
      case RoutesName.rating:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  RatingView());

        // Earning ----------------------------------------------------------------
      case RoutesName.earning:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  EarningView());
      case RoutesName.withdraw:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  WithdrawView());
      case RoutesName.bankDetails:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  BankDetailsView());

        // Booking -----------------------------------------------------------------
      case RoutesName.bookingHistory:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  BookingHistoryView());
      case RoutesName.bookingDetails:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  BookingDetailsView());
      case RoutesName.bookingRequest:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  BookingRequestView());
      case RoutesName.sessionRunning:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  SessionRunningView());
      case RoutesName.sessionComplete:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  SessionCompleteView());
      case RoutesName.reviewRating:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  ReviewRatingView());

        // Other -----------------------------------------------------------------
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