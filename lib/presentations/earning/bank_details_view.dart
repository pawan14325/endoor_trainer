import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/core/common_components/primary_text_field.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class BankDetailsView extends StatelessWidget {
  const BankDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: Text("Banking Details"), context: context),
      body: AppBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: AppSizes.screenWidth * 0.05, right: AppSizes.screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppSizes.screenHeight * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.screenHeight * 0.01),
                  child: Text(
                    'Bank Information',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Container(
                    width: AppSizes.screenWidth,
                    decoration: BoxDecoration(
                        color: AppColors.drawerBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.only(left: AppSizes.screenWidth * 0.04,
                          right: AppSizes.screenWidth * 0.04,
                          top: AppSizes.screenHeight * 0.01,
                          bottom: AppSizes.screenHeight * 0.035),
                      child: Column(children: [
                        SizedBox(
                          height:AppSizes.screenHeight * 0.05,
                          width: AppSizes.screenWidth,
                          child: PrimaryTextField(
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: AppColors.whiteColor),
                              border: Border.all(color: Colors.transparent),
                              color: Colors.transparent,
                              hintText: "IFSC CODE"),
                        ),
                        Container(
                          height: 1,
                          width: AppSizes.screenWidth,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: AppSizes.screenHeight * 0.05,
                          width: AppSizes.screenWidth,
                          child: PrimaryTextField(
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: AppColors.whiteColor),
                              border: Border.all(color: Colors.transparent),
                              color: Colors.transparent,
                              hintText: "BANK NAME"),
                        ),
                        Container(
                          height: 1,
                          width: AppSizes.screenWidth,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: AppSizes.screenHeight * 0.05,
                          width: AppSizes.screenWidth,
                          child: PrimaryTextField(
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: AppColors.whiteColor),
                              border: Border.all(color: Colors.transparent),
                              color: Colors.transparent,
                              hintText: "CITY"),
                        ),
                        Container(
                          height: 1,
                          width: AppSizes.screenWidth,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: AppSizes.screenHeight * 0.05,
                          width: AppSizes.screenWidth,
                          child: PrimaryTextField(
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: AppColors.whiteColor),
                              border: Border.all(color: Colors.transparent),
                              color: Colors.transparent,
                              hintText: "BRANCH NAME"),
                        ),
                        Container(
                          height: 1,
                          width: AppSizes.screenWidth,
                          color: AppColors.greyColor,
                        ),
                      ]),
                    )),
                SizedBox(
                  height: AppSizes.screenHeight * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.screenHeight * 0.01),
                  child: Text(
                    'Account Information',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Container(
                  // height: Get.height*0.26,
                    width: AppSizes.screenWidth,
                    decoration: BoxDecoration(
                        color: AppColors.drawerBackground,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.only( left: AppSizes.screenWidth * 0.04,
                          right: AppSizes.screenWidth * 0.04,
                          top: AppSizes.screenHeight * 0.01,
                          bottom: AppSizes.screenHeight * 0.035),
                      child: Column(children: [
                        SizedBox(
                          height: AppSizes.screenHeight * 0.05,
                          width: AppSizes.screenWidth,
                          child: PrimaryTextField(
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: AppColors.whiteColor),
                              border: Border.all(color: Colors.transparent),
                              color: Colors.transparent,
                              hintText: "ACCOUNT NAME(AS PER BANK DETAILS)"),
                        ),
                        Container(
                          height: 1,
                          width: AppSizes.screenWidth,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: AppSizes.screenHeight * 0.05,
                          width: AppSizes.screenWidth,
                          child: PrimaryTextField(
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: AppColors.whiteColor),
                              border: Border.all(color: Colors.transparent),
                              color: Colors.transparent,
                              hintText: "BANK A/C NUMBER"),
                        ),
                        Container(
                          height: 1,
                          width: AppSizes.screenWidth,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(
                          height: AppSizes.screenHeight * 0.05,
                          width: AppSizes.screenWidth,
                          child: PrimaryTextField(
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: AppColors.whiteColor),
                              border: Border.all(color: Colors.transparent),
                              color: Colors.transparent,
                              hintText: "CONFIRM BANK A/C NUMBER"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2),
                          child: Container(
                            height: 1,
                            width: AppSizes.screenWidth,
                            color: AppColors.greyColor,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: AppSizes.screenWidth * 0.25,
                                            child: PrimaryTextField(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium!
                                                  .copyWith(color: AppColors.whiteColor),
                                              enabled: false,
                                                border: Border.all(color: Colors.transparent),
                                                color: Colors.transparent,
                                                hintText: "ACCOUNT TYPE"),
                                          ),
                                          IconButton(
                                            icon:  Icon(Icons.keyboard_arrow_down, size: 30, color: AppColors.greyColor),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ],
                                  )   ,
                                  Container(
                                    height: 1,
                                    width: AppSizes.screenWidth,
                                    color: AppColors.greyColor,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 5,
                              child: Column(
                                children: [
                                  PrimaryTextField(
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: AppColors.whiteColor),
                                    border: Border.all(color: Colors.transparent),
                                      color: Colors.transparent,
                                      hintText: "EFFECTIVE DATA"),
                                  Container(
                                    height: 1,
                                    width: AppSizes.screenWidth,
                                    color: AppColors.greyColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ]),
                    )),
                SizedBox(
                  height: AppSizes.screenHeight * .06,
                ),
                Center(
                  child: PrimaryButton(child: Text(
                    "SAVE",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.primaryColor,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                    ),
                  ), onTap: (){}),
                )


              ],
            ),
          )
        ),
      ),
    );
  }
}
