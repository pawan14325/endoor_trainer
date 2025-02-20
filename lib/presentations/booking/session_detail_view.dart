import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/presentations/booking/review_rating_view.dart';
import 'package:endo_trainer/presentations/home/bottom_nav_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../core/app_colors.dart';

class SessionDetailView extends StatelessWidget {
  const SessionDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Padding(
        padding: EdgeInsets.only(left: AppSizes.screenWidth*0.05, right: AppSizes.screenWidth*0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppSizes.screenHeight*0.075,),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavBarView()));
                  },
                  child: SizedBox(
                      height: 30,
                      width: 30,
                      child: Padding(
                        padding:  EdgeInsets.only(right: AppSizes.screenWidth*0.02),
                        child: const Icon(Icons.arrow_back_ios,size: 18,),
                      )),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15,bottom: 15),
              child: SizedBox(
                  width: AppSizes.screenWidth,
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Thanks for the Fitness Session, ",
                          style: Theme.of(context).textTheme.headlineLarge),
                      TextSpan(
                          text: "Max",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(color: AppColors.secondaryColor)),
                    ]),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: SizedBox(
                  width: AppSizes.screenWidth * .8,
                  child: Text(
                    "We Hope you enjoyed your session.",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: AppColors.hintTextColor, fontWeight: FontWeight.w500),
                  )),
            ),
            Container(
              height: AppSizes.screenHeight*0.053,
              decoration: BoxDecoration(
                  color: AppColors.drawerBackground,
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // DateTextWidget(isoDate: snapshot.data!.result!.endSession.toString(),),
                    Text("25 min",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(color: AppColors.whiteColor,fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15,bottom: 0),
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
                        padding:  EdgeInsets.only(left: AppSizes.screenWidth * .02, right: AppSizes.screenWidth * .08),
                        child: CircleAvatar(
                        maxRadius: 35,
                        backgroundColor: AppColors.greyColor,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: AppSizes.screenWidth*.5,
                            child: RichText(
                              text: TextSpan(

                                text: "Max",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.whiteColor,
                                  fontSize: 16,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\nabc@gmail.com',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.whiteColor),
                                  ),
                                  TextSpan(
                                    text: '\n1234567890',
                                    style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right:AppSizes.screenWidth*0.01),
                                child: Icon(Icons.star,size: 22,),
                              ),
                              Text(
                                 "0",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: AppColors.secondaryColor),
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
              padding: EdgeInsets.only(top: AppSizes.screenHeight*0.035,bottom: AppSizes.screenHeight*0.055),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        height: AppSizes.screenHeight*0.025,
                        width: AppSizes.screenWidth*0.035,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.secondaryColor),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3,bottom: 3),
                        child: Container(
                          height: AppSizes.screenHeight*0.101,
                          width: 1,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      Icon(Icons.location_on_outlined,size: 20,)
                    ],
                  ),
                  SizedBox(
                    width: AppSizes.screenWidth*0.02,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Chandigarh",
                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                color: AppColors.whiteColor, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: SizedBox(
                              width: AppSizes.screenWidth * .77,
                              height: 30,
                              child: Text(
                                "Chandigarh II",
                                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text("05:31 pm",style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: AppColors.secondaryColor,),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6,bottom: 12),
                          child: Container(
                            width: AppSizes.screenWidth*.82,
                            height: 1,
                            color: AppColors.greyColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            "New Delhi",
                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                color: AppColors.whiteColor, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: SizedBox(
                              width: AppSizes.screenWidth * .77,
                              child: Text(
                                "New Delhi II",
                                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: AppColors.whiteColor,),
                              )),
                        ),
                        Text("06:31",style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: AppColors.secondaryColor,),),
                      ],
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ReviewRatingView()));
              },
              child: Container(
                height: AppSizes.screenHeight*0.11,
                width: AppSizes.screenWidth,
                decoration: BoxDecoration(
                    color: AppColors.drawerBackground,
                    borderRadius: BorderRadius.circular(5)
              
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("How was your session with John ?",style: Theme.of(context).textTheme.labelLarge)),
                    Padding(
                      padding: EdgeInsets.only(top: AppSizes.screenHeight*0.02),
                      child: RatingBar.builder(
                        initialRating: 5,
                        minRating: 5,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                        const EdgeInsets.symmetric(horizontal: 9.0),
                        itemBuilder: (context, _) => InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>ReviewRatingView()));
                            },
                            child:Icon(Icons.star,size: 20,)
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ),
                  ],
                ),
              ),
            ),


          ],
            ),
      ));
  }
}
