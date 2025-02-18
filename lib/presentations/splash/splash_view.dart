import 'dart:async';
import 'package:endo_trainer/generated/assets.dart';
import 'package:flutter/material.dart';
import '../../core/common_components/app_background.dart';
import 'package:get/get.dart';

import '../onboarding/onboarding_view.dart'; // Since you use GetX for state management

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigate after 3 seconds
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.push(context,MaterialPageRoute(builder: (context)=>OnboardingView()));
      });
    });

    return Scaffold(
      body: AppBackground(
        child: Center(
          child: SizedBox(
            height: 67,
            width: 383,
            child: Image.asset(Assets.imagesLogo),
          ),
        ),
      ),
    );
  }
}
