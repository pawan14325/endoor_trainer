import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class WithdrawView extends StatelessWidget {
  const WithdrawView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: Text("Withdraw"), context: context),
      body: AppBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: AppSizes.screenWidth * 0.02,
                    right: AppSizes.screenWidth * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 71,
                      width: AppSizes.screenWidth,
                      decoration: BoxDecoration(
                          color: AppColors.drawerBackground,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: AppSizes.screenWidth * 0.05,
                            left: AppSizes.screenWidth * 0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Balance',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'AED 232.45',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.secondaryColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppSizes.screenHeight * 0.02,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: AppSizes.screenHeight * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 31,
                            width: 84,
                            decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                border:
                                    Border.all(color: AppColors.secondaryColor),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Unpaid',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(color: AppColors.primaryColor),
                            )),
                          ),
                          SizedBox(
                            width: AppSizes.screenWidth * 0.1,
                          ),
                          Container(
                            height: 31,
                            width: 93,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border:
                                    Border.all(color: AppColors.secondaryColor),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Requested',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(color: AppColors.secondaryColor),
                            )),
                          ),
                          SizedBox(
                            width: AppSizes.screenWidth * 0.1,
                          ),
                          Container(
                            height: 31,
                            width: 84,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border:
                                    Border.all(color: AppColors.secondaryColor),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Paid',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(color: AppColors.secondaryColor),
                            )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                  height: AppSizes.screenHeight,
                  width: AppSizes.screenWidth,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: AppSizes.screenHeight * 0.02),
                        child: SizedBox(
                          height: AppSizes.screenHeight * .6,
                          width: AppSizes.screenWidth,
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 1,
                                      width: AppSizes.screenWidth,
                                      color: AppColors.greyColor,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: AppSizes.screenWidth * 0.03,
                                          top: AppSizes.screenHeight * .02,
                                          bottom: AppSizes.screenHeight * .02),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Checkbox(
                                                checkColor:
                                                    AppColors.secondaryColor,
                                                activeColor: Colors.transparent,
                                                side: BorderSide(
                                                    color:
                                                        AppColors.hintTextColor,
                                                    width: 2),
                                                value: false,
                                                onChanged: (bool? value) {},
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: AppSizes.screenWidth *
                                                        0.05),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width:
                                                          AppSizes.screenWidth *
                                                              0.6,
                                                      child: Text(
                                                        'Yoga session with Richard',
                                                        style: const TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                    Text(
                                                      "21 Dec . 1.39 pm ",
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'AED 500',
                                            style: TextStyle(
                                                color: AppColors.secondaryColor,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      ),
                      Center(
                        child: PrimaryButton(
                            child: Text(
                              'Sent Request',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                      color: AppColors.primaryColor,
                                      fontSize: 18,
                                      fontFamily: 'Montserrat'),
                            ),
                            onTap: () {
                              showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: AppColors.drawerBackground,
                                    title: Column(
                                      children: [
                                        SizedBox(
                                          height: AppSizes.screenHeight * 0.03,
                                        ),
                                        Image.asset(
                                          Assets.imagesIcCookTick,
                                          scale: 1.5,
                                        ),
                                        SizedBox(
                                          height: AppSizes.screenHeight * 0.02,
                                        ),
                                      ],
                                    ),
                                    content: SizedBox(
                                        width: AppSizes.screenWidth,
                                        height: AppSizes.screenHeight * 0.075,
                                        child: Text(
                                          "Your Request has been sent\nsuccessfully. You will be notified\nshortly",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.whiteColor),
                                          textAlign: TextAlign.center,
                                        )),
                                    actions: [
                                      Center(
                                        child: PrimaryButton(
                                            height: 35,
                                            width: 95,
                                            child: Text(
                                              'OK',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineSmall!
                                                  .copyWith(
                                                      color:
                                                          AppColors.primaryColor,
                                                      fontSize: 18,
                                                      fontFamily: 'Montserrat'),
                                            ),
                                            onTap: () {
                                              Navigator.pop(context);
                                            }),
                                      ),
                                      SizedBox(
                                        height: AppSizes.screenHeight * 0.03,
                                      ),
                                    ],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  );
                                },
                              );
                            }),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
