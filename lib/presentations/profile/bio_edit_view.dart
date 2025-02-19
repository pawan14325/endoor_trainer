import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_sizes.dart';
import '../../core/common_components/app_background.dart';
import '../../core/common_components/primary_button.dart';
import '../../core/common_components/primary_text_field.dart';

class BioEditView extends StatelessWidget {
  const BioEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      appBar: myAppBar(title: Text("Bio"), context: context),
      child: Padding(
            padding:  EdgeInsets.only(left: AppSizes.screenWidth*0.05,right: AppSizes.screenWidth*0.05),
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                      PrimaryTextField(
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: AppColors.whiteColor),color: Colors.transparent,hintText: "Enter Nick Name"),
                      Padding(
                        padding:  EdgeInsets.only(top: 15,bottom: 8),
                        child: Row(
                          children: [
                            Text("Years of Experience",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
                            Text(" *",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,color: Colors.red),),
                          ],
                        ),
                      ),
                      PrimaryTextField(
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: AppColors.whiteColor),color: Colors.transparent,hintText: "Enter Years of Experience"),
                      Padding(
                        padding:  EdgeInsets.only(top: 15,bottom: 8),
                        child: Row(
                          children: [
                            Text("Areas of Expertise relevant for coaching",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
                            Text(" *",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,color: Colors.red),),

                          ],
                        ),
                      ),
                      PrimaryTextField(
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: AppColors.whiteColor),
                          color: Colors.transparent,hintText: "Enter Your Expertise"),
                      Padding(
                        padding:  EdgeInsets.only(top: 15,bottom: 8),
                        child: Row(
                          children: [
                            Text("Fun Fact/Professional Anecdote",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      PrimaryTextField(
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: AppColors.whiteColor),color: Colors.transparent,hintText: "Enter Fun Fact/Professional Anecdote"),
                      Padding(
                        padding:  EdgeInsets.only(top: 15,bottom: 8),
                        child: Row(
                          children: [
                            Text("Motivational Quote",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      PrimaryTextField(
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: AppColors.whiteColor),
                          color: Colors.transparent,hintText: "Enter Motivational Quote"),
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
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: AppColors.whiteColor),
                          maxLength: 250,
                          color: Colors.transparent,
                          hintText: "Tell us something about yourself"),

                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: AppSizes.screenHeight*0.02),
                    child: PrimaryButton(
                        height: AppSizes.screenHeight*0.05,
                        width: AppSizes.screenWidth*0.7,
                        child: Text(
                          'Update',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: AppColors.primaryColor,fontSize: 18,
                              fontFamily: 'Montserrat'),
                        ), onTap: (){}),
                  ),
                  SizedBox(height: AppSizes.screenHeight*0.05,)

                ],
              ),
            ),
          ),
    );
  }
}
