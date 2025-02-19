import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:endo_trainer/presentations/booking/booking_history_view.dart';
import 'package:endo_trainer/presentations/earning/bank_details_view.dart';
import 'package:endo_trainer/presentations/earning/earning_view.dart';
import 'package:endo_trainer/presentations/onboarding/onboarding_view.dart';
import 'package:endo_trainer/presentations/profile/account_view.dart';
import 'package:endo_trainer/presentations/profile/bio_edit_view.dart';
import 'package:endo_trainer/presentations/profile/docuemnt_view.dart';
import 'package:endo_trainer/presentations/profile/rating_view.dart';
import 'package:endo_trainer/presentations/profile/support_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      appBar: myAppBar(title: Text("Profile"), context: context),
      child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: AppSizes.screenWidth * 0.05, right: AppSizes.screenWidth * 0.05),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: CircleAvatar(
                        radius: 42,
                        backgroundColor: AppColors.secondaryColor,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: AppSizes.screenWidth * 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(right: 3),
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              "Name",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: AppSizes.screenHeight * 0.003,
                        ),
                        SizedBox(
                          width: AppSizes.screenWidth*0.5,
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            "abc@gmail.com",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor),
                          ),
                        ),
                        SizedBox(
                          height: AppSizes.screenHeight * 0.003,
                        ),
                        Text(
                          'View Activity',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondaryColor,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: AppSizes.screenWidth * 0.01, right: AppSizes.screenWidth * 0.01, bottom: AppSizes.screenHeight * 0.03, top: AppSizes.screenHeight * 0.03),
                  child: Container(
                    height: 1,
                    width: AppSizes.screenWidth,
                    color: AppColors.greyColor,
                  ),
                ),
                Container(
                    height: AppSizes.screenHeight * 0.05,
                    width: AppSizes.screenWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.greyColor),
                        color: AppColors.drawerBackground),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountView()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: AppSizes.screenWidth * 0.04,
                              ),
                              Image.asset(
                                Assets.imagesIcProfileBottomNavBar,
                                width: 19,
                                color: AppColors.whiteColor,
                              ),
                              SizedBox(
                                width: AppSizes.screenWidth * 0.06,
                              ),
                              Text(
                                'Account',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                          Transform.translate(
                              offset: const Offset(-10, 0),
                              child:  Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.whiteColor,
                                size: 20,
                              ))
                        ],
                      ),
                    )),
                SizedBox(
                  height: AppSizes.screenHeight * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DocumentView()));
                  },
                  child: Container(
                      height: AppSizes.screenHeight * 0.05,
                      width: AppSizes.screenWidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: AppColors.greyColor),
                          color: AppColors.drawerBackground),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width:AppSizes.screenWidth * 0.04,
                              ),
                              Icon(CupertinoIcons.doc,size: 22,),
                              SizedBox(
                                width: AppSizes.screenWidth * 0.057,
                              ),
                              Text(
                                'Documents',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                          Transform.translate(
                              offset: const Offset(-10, 0),
                              child:  Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.whiteColor,
                                size: 20,
                              ))
                        ],
                      )),
                ),
                SizedBox(
                  height: AppSizes.screenHeight * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>BookingHistoryView()));
                  },
                  child: Container(
                      height: AppSizes.screenHeight * 0.05,
                      width: AppSizes.screenWidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: AppColors.greyColor),
                          color: AppColors.drawerBackground),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: AppSizes.screenWidth * 0.04,
                              ),
                              Image.asset(
                                Assets.imagesIcHistoryBottomNavBar,
                                width: 22,
                                color: AppColors.whiteColor,
                              ),
                              SizedBox(
                                width: AppSizes.screenWidth * 0.057,
                              ),
                              Text(
                                'My Sessions',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                          Transform.translate(
                              offset: const Offset(-10, 0),
                              child:  Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.whiteColor,
                                size: 20,
                              ))
                        ],
                      )),
                ),
                SizedBox(
                  height: AppSizes.screenHeight * 0.02,
                ),
                Container(
                    height: AppSizes.screenHeight * 0.05,
                    width: AppSizes.screenWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.greyColor),
                        color: AppColors.drawerBackground),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SupportView()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: AppSizes.screenWidth* 0.04,
                              ),
                              Icon(Icons.headphones,size: 20,),
                              SizedBox(
                                width: AppSizes.screenWidth * 0.06,
                              ),
                              Text(
                                'Support',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                          Transform.translate(
                              offset: const Offset(-10, 0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.whiteColor,
                                size: 20,
                              ))
                        ],
                      ),
                    )),
                SizedBox(
                  height: AppSizes.screenHeight * 0.02,
                ),
                Container(
                    height: AppSizes.screenHeight * 0.05,
                    width:AppSizes.screenWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.greyColor),
                        color: AppColors.drawerBackground),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>EarningView()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: AppSizes.screenWidth * 0.04,
                              ),
                              Image.asset(
                                Assets.imagesIcEarningBottomNavBar,
                                width: 20,
                                color: AppColors.whiteColor,
                              ),
                              SizedBox(
                                width: AppSizes.screenWidth * 0.057,
                              ),
                              Text(
                                'My Earnings',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                          Transform.translate(
                              offset: const Offset(-10, 0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.whiteColor,
                                size: 20,
                              ))
                        ],
                      ),
                    )),
                SizedBox(
                  height: AppSizes.screenHeight * 0.02,
                ),
                Container(
                    height:AppSizes.screenHeight * 0.05,
                    width: AppSizes.screenWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.greyColor),
                        color: AppColors.drawerBackground),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BankDetailsView()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: AppSizes.screenWidth * 0.04,
                              ),
                              Icon(Icons.comment_bank,size: 20,),
                              SizedBox(
                                width: AppSizes.screenWidth * 0.057,
                              ),
                              Text(
                                'Bank Information',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                           Padding(
                             padding: EdgeInsets.only(right: AppSizes.screenWidth * 0.028),
                             child: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.whiteColor,
                              size: 20,
                             ),
                           )
                        ],
                      ),
                    )),
                SizedBox(
                  height: AppSizes.screenHeight * 0.02,
                ),
                Container(
                    height: AppSizes.screenHeight * 0.05,
                    width: AppSizes.screenWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.greyColor),
                        color: AppColors.drawerBackground),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BioEditView()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: AppSizes.screenWidth * 0.04,
                              ),
                              Icon(CupertinoIcons.info,size: 20,),
                              SizedBox(
                                width: AppSizes.screenWidth * 0.057,
                              ),
                              Text(
                                'Bio',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                           Padding(
                             padding: EdgeInsets.only(right: AppSizes.screenWidth * 0.028),
                             child: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.whiteColor,
                              size: 20,
                             ),
                           )
                        ],
                      ),
                    )),
                SizedBox(
                  height: AppSizes.screenHeight * 0.02,
                ),
                Container(
                    height: AppSizes.screenHeight * 0.05,
                    width: AppSizes.screenWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.greyColor),
                        color: AppColors.drawerBackground),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RatingView()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: AppSizes.screenWidth * 0.04,
                              ),
                             Icon(Icons.star_rate,size: 20,),
                              SizedBox(
                                width: AppSizes.screenWidth * 0.057,
                              ),
                              Text(
                                'Rating & Reviews',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                           Padding(
                             padding: EdgeInsets.only(right: AppSizes.screenWidth * 0.028),
                             child: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.whiteColor,
                              size: 20,
                                                     ),
                           )
                        ],
                      ),
                    )),
                SizedBox(
                  height: AppSizes.screenHeight * 0.05,
                ),
                PrimaryButton(
                    height: AppSizes.screenHeight*0.05,
                    width: AppSizes.screenWidth*0.7,
                    child: Text(
                  'Logout',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Montserrat'),
                ), onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingView()));
                })
              ],
            ),
          ),
        ),
      );
  }
}
