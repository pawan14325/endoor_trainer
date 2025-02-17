import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/core/common_components/primary_text_field.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_sizes.dart';

class BioView extends StatelessWidget {
  const BioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: Text("Bio"), context: context),
      body: AppBackground(
        child: Padding(
          padding:  EdgeInsets.only(left: AppSizes.screenWidth*0.05,right: AppSizes.screenWidth*0.05),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: AppSizes.screenHeight*0.02),
                  child: Column(
                    children: [
                      SizedBox(height: AppSizes.screenHeight*0.02,),
                      Stack(
                        children: [
                          CircleAvatar(
                              backgroundColor: AppColors.greyColor,
                              radius: 60,),
                          Positioned(
                            bottom: 5,
                            right: 0,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: AppColors.hintTextColor,
                              child:Icon(Icons.camera_alt_outlined,size: 20,),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: AppSizes.screenHeight*0.02,),
                      Padding(
                        padding:  EdgeInsets.only(bottom: 15),
                        child: Text("Uploading a clear image increases the chances of getting bookings.",style: Theme.of(context).textTheme.labelSmall,),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 15,bottom: 8),
                      child: Row(
                        children: [
                          Text("Nick Name",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
                          Text(" *",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,color: Colors.red),),
                        ],
                      ),
                    ),
                    PrimaryTextField(hintText: "Enter Nick Name"),
                    Padding(
                      padding:  EdgeInsets.only(top: 15,bottom: 8),
                      child: Row(
                        children: [
                          Text("Years of Experience",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
                          Text(" *",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,color: Colors.red),),
                        ],
                      ),
                    ),
                    PrimaryTextField(hintText: "Enter Years of Experience"),
                    Padding(
                      padding:  EdgeInsets.only(top: 15,bottom: 8),
                      child: Row(
                        children: [
                          Text("Areas of Expertise relevant for coaching",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
                          Text(" *",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,color: Colors.red),),
            
                        ],
                      ),
                    ),
                      PrimaryTextField(hintText: "Enter Your Expertise"),
                    Padding(
                      padding:  EdgeInsets.only(top: 15,bottom: 8),
                      child: Row(
                        children: [
                          Text("Fun Fact/Professional Anecdote",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                    PrimaryTextField(hintText: "Enter Fun Fact/Professional Anecdote"),
                    Padding(
                      padding:  EdgeInsets.only(top: 15,bottom: 8),
                      child: Row(
                        children: [
                          Text("Motivational Quote",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                    PrimaryTextField(hintText: "Enter Motivational Quote"),
                    Padding(
                      padding:  EdgeInsets.only(top: 15,bottom: 8),
                      child: Row(
                        children: [
                          Text(
                            'Mention Bio',
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 14,fontWeight: FontWeight.w500,),
                          ),
                          Text(" *",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,color: Colors.red),),
                        ],
                      ),
                    ),
                    PrimaryTextField(
                        maxLength: 250,
                        hintText: "Tell us something about yourself"),
            
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(top: AppSizes.screenHeight*0.02),
                  child: PrimaryButton(
                      height: AppSizes.screenHeight*0.05,
                      width: AppSizes.screenWidth*0.7,
                      child: Text(
                    'Submit',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.primaryColor,fontSize: 18,
                        fontFamily: 'Montserrat'),
                  ), onTap: ()=>showDialogBox(context)),
                ),
                SizedBox(height: AppSizes.screenHeight*0.05,)
            
              ],
            ),
          ),
        ),
      ),
    );
  }
  showDialogBox(BuildContext context) {
    showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.primaryColor,
          title: Column(
            children: [
              SizedBox(
                height: AppSizes.screenHeight * 0.03,
              ),
              Image.asset(
                Assets.imagesIcCookTick,
                scale: 4,
              ),
              SizedBox(
                height: AppSizes.screenHeight * 0.02,
              ),
            ],
          ),
          content: SizedBox(
              width: AppSizes.screenWidth, // Set width as per your requirement
              height: AppSizes.screenHeight * 0.07, // Set height as per your requirement
              child: Text(
                'Your onboarding process has been\nsuccessfully completed. You will be\nnotified for further action.',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: AppColors.whiteColor),
                textAlign: TextAlign.center,
              )),
          actions: [
            Center(
              child: PrimaryButton(
                  height: AppSizes.screenHeight*0.04,
                  width: AppSizes.screenWidth*0.44,
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
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home));
                  }),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        );
      },
    );
  }
}
