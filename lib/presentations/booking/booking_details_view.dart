import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class BookingDetailsView extends StatelessWidget {
  const BookingDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
          appBar: myAppBar(title: Text("Booking Details"), context: context),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: AppSizes.screenWidth*0.06, right: AppSizes.screenWidth*0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.drawerBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: AppSizes.screenWidth * .02, right: AppSizes.screenWidth * .08),
                              child: CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: AppColors.greyColor,
                              ),
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Max",
                                    style:
                                    Theme.of(context).textTheme.labelMedium!.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.secondaryColor,
                                      fontSize: 16,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\nabc@gmail.com',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.whiteColor),
                                      ),
                                      TextSpan(
                                        text: '\n1234567890',
                                        style:  TextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: AppSizes.screenWidth*0.01),
                                      child: Icon(Icons.star,size: 20,color: AppColors.whiteColor,),
                                    ),
                                    Text(
                                      "4.86 (49)",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(color: AppColors.whiteColor),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: AppSizes.screenHeight * 0.035, bottom: AppSizes.screenHeight * 0.055),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: AppSizes.screenHeight * 0.025,
                              width: AppSizes.screenWidth * 0.035,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.secondaryColor),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 3, bottom: 3),
                              child: Container(
                                height: AppSizes.screenHeight* 0.07,
                                width: 1,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            Icon(Icons.location_on_outlined,size: 20,color: AppColors.secondaryColor,)
                          ],
                        ),
                        SizedBox(
                          width: AppSizes.screenWidth * 0.014,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Text(
                                  "Aryarup Comples",
                                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                  width: AppSizes.screenWidth * .77,
                                  child: Text(
                                    "221b Baker St, Marylebone, Dubai NW! 6xE, United Arabia - 25m",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                      color: AppColors.whiteColor,
                                    ),
                                  )),
                              Text(
                                "9:54 AM",
                                style:
                                Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6, bottom: 12),
                                child: Container(
                                  width: AppSizes.screenWidth * .83,
                                  height: 1,
                                  color: AppColors.greyColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Text(
                                  "Aryarup Comples",
                                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                  width: AppSizes.screenWidth * .77,
                                  child: Text(
                                    "221b Baker St, Marylebone, Dubai NW! 6xE, United Arabia - 25m",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                      color: AppColors.whiteColor,
                                    ),
                                  )),
                              Text(
                               "10:25 AM",
                                style:
                                Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.015, top: 0),
                    child: Text(
                      "Session Details",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.secondaryColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom:AppSizes.screenHeight*0.02),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.drawerBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: AppSizes.screenWidth*0.37,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: AppSizes.screenWidth * .150,left: 10),
                                    child: Text("Booked on:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(fontWeight: FontWeight.w500)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10,bottom: 5),
                                  child: Text("26 March 2024 at 07:00:00",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 1,
                                width: AppSizes.screenWidth,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10,bottom: 5,top: 5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: AppSizes.screenWidth*0.37,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: AppSizes.screenWidth * .045),
                                      child: Text("Session Duration:",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text("60 mins",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 1,
                                width: AppSizes.screenWidth,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10,bottom: 5,top: 5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: AppSizes.screenWidth*0.37,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: AppSizes.screenWidth * .10),
                                      child: Text("Booking Date:",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text("07:00 pm",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 1,
                                width: AppSizes.screenWidth,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10,bottom: 5,top: 5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: AppSizes.screenWidth*0.37,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: AppSizes.screenWidth * .016),
                                      child: Text("Session Start time:",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text("07:00 pm",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 1,
                                width: AppSizes.screenWidth,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10,top: 5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: AppSizes.screenWidth*0.37,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: AppSizes.screenWidth * .035),
                                      child: Text("Session End time:",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text("08:00 pm",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                height: 1,
                                width: AppSizes.screenWidth,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10,top: 5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: AppSizes.screenWidth*0.37,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: AppSizes.screenWidth * .23),
                                      child: Text("Status",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Text("Completed",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
          )
    );
  }
}
