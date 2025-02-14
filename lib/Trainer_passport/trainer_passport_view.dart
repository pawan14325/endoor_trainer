import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/primary_text_field.dart';
import 'package:endo_trainer/presentations/bio/bio_view.dart';
import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../core/common_components/app_bar.dart';

class TrainerPassportView extends StatelessWidget {
  const TrainerPassportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          title: GestureDetector(
            onTap: () {
             Navigator.pop(context);
            },
            child: Text(
                  "passport",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          context: context),
      body: AppBackground(
        child: Padding(
          padding:  EdgeInsets.only(left: AppSizes.screenWidth * 0.03,
              right: AppSizes.screenWidth * 0.03,
              top: AppSizes.screenHeight * .02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(bottom: AppSizes.screenHeight * 0.035),
                child: Text(
                  'The following information will be collected as a part of the onboarding process, so please ensure that you provide correct details.',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: 1,
                width: AppSizes.screenWidth,
                color: AppColors.greyColor,
              ),
              Padding(
                padding:  EdgeInsets.only(top:AppSizes.screenHeight * 0.02),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(bottom: AppSizes.screenHeight * .008, top: AppSizes.screenHeight * .04),
                      child: Text(
                        'Name on the Passport ',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: AppSizes.screenHeight * .03,),
                      child: Text(
                        "* ",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 14, color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              PrimaryTextField(hintText: "Enter Passport Name"),
              SizedBox(
                height: AppSizes.screenHeight * 0.01,
              ),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only( bottom:AppSizes.screenHeight * .008, top: AppSizes.screenHeight * .02),
                    child: Text(
                      'Passport Number',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 15, bottom: 8),
                    child: Text(
                      " *",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 14, color: Colors.red),
                    ),
                  ),
                ],
              ),
              PrimaryTextField(hintText: "Enter Passport Number"),
              SizedBox(
                height: AppSizes.screenHeight * 0.01,
              ),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(bottom: AppSizes.screenHeight * .008, top: AppSizes.screenHeight * .02),
                    child: Text(
                      'Upload Passport Photo',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: AppSizes.screenHeight * .01,),
                    child: Text(
                      "* ",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 14, color: Colors.red),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BioView()));
                },
                child: Container(
                  height: 45,
                  width: AppSizes.screenWidth,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.greyColor),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.upload,size: 20,color: AppColors.hintTextColor,),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Add a File',
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.hintTextColor),
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
