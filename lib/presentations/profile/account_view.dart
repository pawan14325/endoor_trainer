import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/core/common_components/primary_text_field.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: Text("Account"), context: context),
      body: AppBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: AppSizes.screenWidth * 0.05, right: AppSizes.screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                    CircleAvatar(
                              radius: 42,
                              backgroundColor: AppColors.secondaryColor,
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor:
                                AppColors.primaryColor,
                              ),
                            ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.photo_camera_outlined,
                            color: AppColors.primaryColor,
                            size: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSizes.screenHeight * 0.007,
                ),
                Center(
                    child: Text(
                      "Name",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: AppColors.whiteColor),
                    )),
                SizedBox(
                  height: AppSizes.screenHeight * 0.003,
                ),
                Center(
                    child: Text("abc@gmail.com",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.whiteColor))),
                SizedBox(
                  height: AppSizes.screenHeight * 0.003,
                ),
                Center(
                    child: Text('View Activity',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondaryColor))),
                SizedBox(
                  height: AppSizes.screenHeight * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      'First Name',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.whiteColor),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      " *",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSizes.screenHeight * 0.011,
                ),
                PrimaryTextField(color: Colors.transparent,hintText: "Enter First Name"),
                SizedBox(
                  height:AppSizes.screenHeight * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      'Last Name',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.whiteColor),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      " *",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSizes.screenHeight * 0.011,
                ),
                PrimaryTextField(color: Colors.transparent,hintText: "Enter Last Name"),
                SizedBox(
                  height:AppSizes.screenHeight * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      'Email address',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.whiteColor),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      " *",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSizes.screenHeight * 0.011,
                ),
                PrimaryTextField(color: Colors.transparent,hintText: "Enter Email"),
                SizedBox(
                  height: AppSizes.screenHeight * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      'Phone Number',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.whiteColor),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      " *",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSizes.screenHeight * 0.011,
                ),
                PrimaryTextField(color: Colors.transparent,hintText: "Enter Number"),
                SizedBox(
                  height: AppSizes.screenHeight * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      'Gender',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: AppColors.whiteColor),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      " *",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height:AppSizes.screenHeight * 0.011,
                ),
                Container(
                        height: 45,
                        width:AppSizes.screenWidth,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: AppColors.greyColor),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                              EdgeInsets.only(left: AppSizes.screenWidth * 0.05),
                              child: Text(
                                "Select Gender",
                                style:  TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 32,
                                  color: AppColors.greyColor),
                            ),
                          ],
                        ),
                      ),
                SizedBox(
                  height:AppSizes.screenHeight * 0.01,
                ),
                Text(
                  'Description',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: AppColors.whiteColor),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: AppSizes.screenHeight * 0.011,
                ),
                PrimaryTextField(color: Colors.transparent,hintText: "Write about yourself"),
                SizedBox(
                  height: AppSizes.screenHeight * 0.04,
                ),
                Center(
                  child: PrimaryButton(
                      child: Text(
                    'Update',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 18,
                        fontFamily: 'Montserrat'),
                  ),
                      onTap: (){}),
                ),
                SizedBox(
                  height: AppSizes.screenHeight * 0.05,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
