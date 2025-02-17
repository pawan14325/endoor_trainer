import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/core/common_components/primary_text_field.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class SupportView extends StatelessWidget {
  const SupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: Text("Support"), context: context),
      body: AppBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: AppSizes.screenWidth*0.05,right: AppSizes.screenWidth*0.05),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.01,),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15,bottom: 8),
                        child: Text("Your Name",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
                      ),
                    ],
                  ),
                ),
                PrimaryTextField(color: Colors.transparent,hintText: "Enter Your Name"),
                Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.01),
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 15,bottom: 8),
                          child: Text("E-mail",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),)),
                    ],
                  ),
                ),
                PrimaryTextField(color: Colors.transparent,hintText: "Enter E-mail"),
                Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.01),
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 15,bottom: 8),
                          child: Text("Phone Number",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),)),
                    ],
                  ),
                ),
                PrimaryTextField(color: Colors.transparent,hintText: "Enter Phone Number"),
                Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.01),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15,bottom: 8),
                        child: Text(
                          'Problem Description',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: AppColors.whiteColor),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.13),
                  child: PrimaryTextField(color: Colors.transparent,hintText: "Tell us about your problem"),
                ),
                PrimaryButton(onTap: (){}, child: Text('Send',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Montserrat'),)),
                SizedBox(height: AppSizes.screenHeight *0.05,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
