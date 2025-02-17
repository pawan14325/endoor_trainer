import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/core/common_components/primary_text_field.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:endo_trainer/presentations/signup/trainer_document_option_view.dart';
import 'package:endo_trainer/presentations/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        toolbarHeight: 50,
        leadingWidth: AppSizes.screenWidth * 0.14,
        centerTitle: false,
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingView()));
            },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColors.whiteColor,
              size: 18,
            )),
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingView()));
              },
              child: Transform.translate(
                offset: const Offset(-25, 0),
                child: Text(
                  "Welcome to ",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(-25, -2),
              child: Image.asset(
                Assets.imagesLogo,
                scale: 8,
              ),
            ),
          ],
        ),
      ),
      body: AppBackground(
        child: Padding(
          padding:  EdgeInsets.only(left: AppSizes.screenWidth*0.05,right: AppSizes.screenWidth*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSizes.screenHeight * 0.01,
              ),
              Text(
                "Please enter your details to create an account.",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 15,bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          "First Name",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14),
                        ),
                        Text(
                          " *",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14, color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  PrimaryTextField(
                      width: AppSizes.screenWidth,
                      hintText: "Enter First Name"),
                  Padding(
                    padding:  EdgeInsets.only(top: 15,bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          "Last Name",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14),
                        ),
                        Text(
                          " *",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14, color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  PrimaryTextField(
                      width: AppSizes.screenWidth,
                      hintText: "Enter Last Name"),
                  Padding(
                    padding:  EdgeInsets.only(top: 15,bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          "Email",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14),
                        ),
                        Text(
                          " *",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14, color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  PrimaryTextField(
                      width: AppSizes.screenWidth,
                      hintText: "Enter Your Email id"),
                  Padding(
                    padding:  EdgeInsets.only(top: 15,bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          "Password",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14),
                        ),
                        Text(
                          " *",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14, color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  PrimaryTextField(
                      width: AppSizes.screenWidth,
                      hintText: "Enter Your Password"),
                  Padding(
                    padding:  EdgeInsets.only(top: 15,bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          "Confirm Password",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14),
                        ),
                        Text(
                          " *",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14, color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  PrimaryTextField(
                      width: AppSizes.screenWidth,
                      hintText: "Enter Your Confirm Password"),
                  Padding(
                    padding:  EdgeInsets.only(top: 15,bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          "Gender",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14),
                        ),
                        Text(
                          " *",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14, color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    width: AppSizes.screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.greyColor),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                          EdgeInsets.only(left: AppSizes.screenWidth * 0.035,right:AppSizes.screenWidth * 0.035, ),
                          child: Text(
                             "Select Gender",
                            style: TextStyle(
                              color: AppColors.hintTextColor,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Icon(
                            Icons.keyboard_arrow_down,
                            size: 32,
                            color: AppColors.hintTextColor),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 15,bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          "Categories you want to provide coaching on",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14),
                        ),
                        Text(
                          " *",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 14, color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      border: Border.all(
                          color: Colors
                              .transparent), // Example border styling
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 8),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Select categories",
                              style: const TextStyle(
                                color: AppColors.hintTextColor,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 32,
                            color: AppColors.hintTextColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 30, bottom: 30),
                    child: Center(
                      child: PrimaryButton(
                          height: AppSizes.screenHeight*0.05,
                          width: AppSizes.screenWidth*0.7,
                          child: Text(
                        "Continue",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: 18,
                            fontFamily: 'Montserrat'),
                      ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TrainerDocumentOptionView()));
        
                          }),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
