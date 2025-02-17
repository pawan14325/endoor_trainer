import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:endo_trainer/presentations/signup/country_code_view.dart';
import 'package:endo_trainer/presentations/login/login_view.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: AppSizes.screenHeight,
        width: AppSizes.screenWidth,
        decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage(Assets.imagesOnboarding),
           fit: BoxFit.cover,
           opacity: 0.3,
         )
        ),
        child: Column(
          children: [
            SizedBox(
              height: AppSizes.screenHeight*0.06,
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: AppSizes.screenHeight*0.45),
              child: Image.asset(Assets.imagesOnboardingLogo,scale: 3.5,),
            ),
            Text("Welcome to",style: Theme.of(context).textTheme.headlineLarge,),
            Image.asset(Assets.imagesLogo,scale: 5,),
            RichText(
                text: TextSpan(
                    text: "Step into Endoorphin, where wellness and fitness",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(fontWeight: FontWeight.w400,color: AppColors.greyColor),
                    children: [
                      TextSpan(
                        text: "\n      thrive! With over ",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontWeight: FontWeight.w400,color: AppColors.greyColor),
                      ),
                      TextSpan(
                        text: " 2000+",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w700, color: AppColors.secondaryColor),
                      ),
                      TextSpan(
                        text: " certified trainers",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontWeight: FontWeight.w400,color: AppColors.greyColor),
                      ),
                    ])),
            Padding(
              padding:  EdgeInsets.only(bottom: AppSizes.screenHeight*0.025,top: AppSizes.screenHeight*0.03),
              child: PrimaryButton(
                height: AppSizes.screenHeight*0.05,
                  width: AppSizes.screenWidth*0.7,
                  child: Text(
                "Create Account",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 18,
                    fontFamily: 'Montserrat'
                ),
              ),
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CountryCode()));
                  }),
            ),
            PrimaryButton(
              height: AppSizes.screenHeight*0.05,
                width: AppSizes.screenWidth*0.7,
                backGroundColor: Colors.transparent,
                child: Text(
                  "Sign In",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppColors.secondaryColor,
                  fontSize: 18,
                  fontFamily: 'Montserrat'
              ),
            ),
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginView()));
                }),
          ],
        ),
      ),
    );
  }
}
