import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/core/common_components/primary_text_field.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: Text("Forgot Password"), context: context),
      body: AppBackground(
        child: Padding(
          padding:  EdgeInsets.only(left: AppSizes.screenWidth*0.05,right: AppSizes.screenWidth*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(top: AppSizes.screenHeight*0.04),
                  child: CircleAvatar(
                    backgroundColor: AppColors.hintTextColor,
                    radius: 90,
                    child: Image.asset(Assets.imagesIcLockForgotPassword,scale: 4,),
                  ),
                ),
              ),
              Center(
                child:
                Padding(
                  padding:  EdgeInsets.only(top: AppSizes.screenHeight*0.05),
                  child: Text(
                    'Please Enter Your Email id to Receive\n a Password reset url.',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w500),textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: AppSizes.screenHeight*0.07),
                child: Text(
                  'Email',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSizes.screenHeight*0.01),
                child: PrimaryTextField(hintText: "Enter your Email"),
              ),
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(top: AppSizes.screenHeight*0.2),
                  child: PrimaryButton(
                      height: AppSizes.screenHeight*0.05,
                      width: AppSizes.screenWidth*0.7,
                      child: Text(
                    "Send",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 18,
                        fontFamily: 'Montserrat'
                    ),
                  ), onTap:()=>onVerified(context)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
onVerified(BuildContext context,
    // String otp,String phoneNumber,String email
    ){
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.hintTextColor,
        title: Column(
          children: [
            SizedBox(height: AppSizes.screenHeight*0.03,),
            Image.asset(Assets.imagesIcCookTick,scale: 4,),
            SizedBox(
              height: AppSizes.screenHeight*0.02,
            ),
            Text('Reset Password',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.secondaryColor),)
          ],
        ),
        content: SizedBox(
            width: AppSizes.screenWidth, // Set width as per your requirement
            height: AppSizes.screenHeight*0.07, // Set height as per your requirement
            child: Text(
              'A Link has been sent to your email for\nresetting the password',style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.whiteColor),
              textAlign: TextAlign.center,
            )),
        actions: [
          Center(
            child: PrimaryButton(
                height: 35,width: AppSizes.screenWidth*.35,
                child: Text('OK',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.primaryColor,fontSize: 14,
        fontFamily: 'Montserrat',),), onTap: (){
            }),
          ),
        ],shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),);
    },
  );
}

