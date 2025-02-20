import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:endo_trainer/presentations/booking/session_complete_view.dart';
import 'package:endo_trainer/presentations/home/bottom_nav_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../core/app_colors.dart';

class SessionRunningView extends StatelessWidget {
  PanelController panelController = PanelController();
   SessionRunningView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: 100,
        controller: panelController,
        maxHeight: AppSizes.screenHeight,
        color: Colors.transparent,
        body: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: AppSizes.screenHeight,
                  width: AppSizes.screenWidth,
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SessionCompleteView()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Image.asset(
                            scale: 4,
                            Assets.imagesLogo,
                            height: AppSizes.screenHeight,
                            width: AppSizes.screenWidth,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: AppSizes.screenHeight * .06, left: AppSizes.screenWidth * .06),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavBarView()));
                                },
                                child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: AppColors.whiteColor,
                                  size: 18,
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                               "Boxing",
                                style:
                                Theme.of(context).textTheme.headlineSmall,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Container(
                    height: AppSizes.screenHeight * .35,
                    width: AppSizes.screenWidth,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.6),
                              AppColors.primaryColor,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: GestureDetector(
                      onHorizontalDragStart: (v) {
                        print("$v");
                        // Get.toNamed(AppRoutes.sessionDetails);
                      },
                      child: Column(
                          children: [
                            Text(
                              "00:00",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(
                                  fontSize: 55,
                                  fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 9),
                                      child: Column(
                                        children: [
                                          Text("Time",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium
                                                  ?.copyWith(
                                                  color: AppColors.whiteColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600)),
                                          Text("12 min",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium
                                                  ?.copyWith(
                                                  color: AppColors.whiteColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        // print(controller.isPaused.value
                                        //     .toString()); // Logging the current state of the timer
                                        // if (controller.isPaused.value == true) {
                                        //   controller.resumeTimer();
                                        // } else {
                                        //   controller.pauseTimer();
                                        // }
                                      },
                                      child: Icon(
                                         Icons.pause_circle_rounded,
                                        color: AppColors.secondaryColor,
                                        size: 75,
                                      )),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: SizedBox(
                                      width: 85,
                                      child: Text(
                                          textAlign: TextAlign.center,
                                          "Boxing",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                              color: AppColors.whiteColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        collapsed: Container(
          color: AppColors.primaryColor,
          height: AppSizes.screenHeight * .15,
          width: AppSizes.screenWidth,
          child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Transform.rotate(
                      angle: 11.0,
                      child: Image.asset(
                        Assets.imagesGiphy,
                        scale: 16,
                      )),
                ),
                Text(
                  "Swipe up for Details",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: AppColors.whiteColor),
                )
              ],
            ),
          ),
        ),
        panelBuilder: (c) {
          return WillPopScope(
            onWillPop: () async {
              panelController
                  .close();
              return false;
            },
            child: Container(
              height: AppSizes.screenHeight,
              width: AppSizes.screenWidth,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColors.drawerBackground.withOpacity(0.7),
                    AppColors.drawerBackground,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 18, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        height: AppSizes.screenHeight * .44,
                        width: AppSizes.screenWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Image.asset(Assets.imagesLogo,scale: 5,)),
                      ),
                      Center(
                        child: Transform.translate(
                          offset: const Offset(0, -20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 43,
                            width: 210,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.drawerBackground),
                            child: Text(
                              "00:00",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: AppColors.secondaryColor),
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: AppSizes.screenHeight * .01),
                        child: Text("Boxing",
                            style: Theme.of(context).textTheme.headlineLarge),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: AppSizes.screenHeight * .01),
                        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,",
                            style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 12,color: AppColors.greyColor)),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: Text(
                          "Customer Details",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: AppColors.secondaryColor),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: AppSizes.screenHeight * .02, right: AppSizes.screenWidth * .08,),
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.secondaryColor,
                                        fontSize: 16,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "\nabc@gmail.com",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.whiteColor),
                                        ),
                                        TextSpan(
                                          text: "\n1234567890",
                                          style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                         TextSpan(
                                          text: ' ',
                                          style: TextStyle(
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
                                       Icon(
                                        Icons.star,
                                        color: AppColors.secondaryColor,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: AppSizes.screenWidth*0.09,
                                        child: Text(
                                          overflow: TextOverflow.ellipsis,
                                          "0(0)",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(color: AppColors.secondaryColor),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 12, top: 12),
                        child: Text(
                          "Session Details",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: AppColors.secondaryColor),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: AppSizes.screenWidth * 0.37,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: AppSizes.screenWidth * .146),
                                        child: Text("Booked on:",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ),
                                    Text("26 March 2024 at 07:00:00",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12, right: 5),
                                child: Container(
                                  height: 1,
                                  width: AppSizes.screenWidth,
                                  color: AppColors.greyColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 13, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: AppSizes.screenWidth * 0.37,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: AppSizes.screenWidth * .04),
                                        child: Text("Session Duration:",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ),
                                    Text("60 min",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12, right: 5),
                                child: Container(
                                  height: 1,
                                  width: AppSizes.screenWidth,
                                  color: AppColors.greyColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 13, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: AppSizes.screenWidth * 0.37,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: AppSizes.screenWidth * .1),
                                        child: Text("Booking Date:",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ),
                                    Text("20 Feb 2025",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12, right: 5),
                                child: Container(
                                  height: 1,
                                  width: AppSizes.screenWidth,
                                  color: AppColors.greyColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 13, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: AppSizes.screenWidth * 0.37,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: AppSizes.screenWidth * .02),
                                        child: Text("Session Start time:",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ),
                                    Text("7:00 pm",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12, right: 5),
                                child: Container(
                                  height: 1,
                                  width: AppSizes.screenWidth,
                                  color: AppColors.greyColor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 13, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: AppSizes.screenWidth * 0.37,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: AppSizes.screenWidth * .04),
                                        child: Text("Session End time:",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ),
                                    Text("8:00 pm",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                            fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
