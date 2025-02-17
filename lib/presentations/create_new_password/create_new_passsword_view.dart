import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/core/common_components/primary_text_field.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class CreateNewPassswordView extends StatelessWidget {
  const CreateNewPassswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: Text("Create New Password"), context: context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: AppSizes.screenWidth*0.055,right: AppSizes.screenWidth*0.055),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSizes.screenHeight*0.04,
              ),
              Center(
                  child: CircleAvatar(
                    backgroundColor: AppColors.hintTextColor,
                    radius: 90,
                    child: Stack(
                      children: [
                        Image.asset(Assets.imagesIcNewlockCreatePassword,scale: 4,),
                        Positioned(
                            bottom: 12,
                            right: 10,
                            child: Image.asset(Assets.imagesIcTickCreatePassword,scale: 4,)),
                      ],
                    ),
                  )
              ),
              SizedBox(
                height: AppSizes.screenHeight*0.05,
              ),
              Center(child: Text(
                'Your new Password Must be Different\nfrom Previously Used Password',style: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w500),textAlign: TextAlign.center,)),
              SizedBox(
                height: AppSizes.screenHeight*0.07,
              ),
              Text('New Password',style: Theme.of(context).textTheme.labelLarge!.copyWith(color: AppColors.whiteColor,fontSize: 14),textAlign: TextAlign.start,),

              SizedBox(
                height: AppSizes.screenHeight * 0.01,
              ),
              PrimaryTextField(hintText: "Enter New password"),
              SizedBox(
                height: AppSizes.screenHeight * 0.01,
              ),
              Text('Confirm Password',style: Theme.of(context).textTheme.labelLarge!.copyWith(color: AppColors.whiteColor,fontSize: 14),textAlign: TextAlign.start,),

              SizedBox(
                height: AppSizes.screenHeight * 0.01,
              ),
              PrimaryTextField(hintText: "Enter Confirm password"),
              SizedBox(
                height: AppSizes.screenHeight*0.13,
              ),
              Center(
                child: PrimaryButton(
                    height: AppSizes.screenHeight*0.05,
                    width: AppSizes.screenWidth*0.7,
                    child: Text('Submit',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.primaryColor,fontSize: 18,
                      fontFamily: 'Montserrat'),), onTap: ()=>onPasswordChanged(context)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
onPasswordChanged(BuildContext context){
  showDialog(
    // barrierDismissible: false,
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
            Text('Password Updated',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.secondaryColor),)
          ],
        ),
        content: SizedBox(
            width: AppSizes.screenWidth, // Set width as per your requirement
            height: AppSizes.screenHeight*0.07, // Set height as per your requirement
            child: Text(
              'Your Password has been updated successfully.',style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.whiteColor),
              textAlign: TextAlign.center,
            )),
        actions: [
          Center(
            child: PrimaryButton(
                height: 35,width: 150,
                child: Text('Continue to login',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.primaryColor,
                fontFamily: 'Montserrat',fontSize: 12),), onTap: (){}),
          )
        ],shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),);
    },
  );

}
