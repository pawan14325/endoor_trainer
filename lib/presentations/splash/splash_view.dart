 import 'package:endo_trainer/generated/assets.dart';
import 'package:endo_trainer/presentations/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
import '../../core/common_components/app_background.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>OnboardingView()));
            },
            child: SizedBox(
              height: 67,
              width: 383,
              child: Image.asset(Assets.imagesLogo),
                    ),
          ),
      )
      )
    );
  }
}
