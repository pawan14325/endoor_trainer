import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/presentations/earning/withdraw_view.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class EarningView extends StatelessWidget {
  const EarningView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      appBar: myAppBar(title: Text("My Earning"), context: context),
      child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only( left: AppSizes.screenWidth * 0.03,
              right: AppSizes.screenWidth * 0.03,
              top: AppSizes.screenHeight * 0.02,),
            child: Column(
              children: [
                Container(
                  height: AppSizes.screenHeight * .09,
                  width: AppSizes.screenWidth,
                  decoration: BoxDecoration(
                    color: AppColors.drawerBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RichText(
                          text: TextSpan(
                            text: "Wallet Balance\n",
                            style: Theme.of(context).textTheme.displayLarge,
                            children: [
                              TextSpan(
                                text: "AED 59.90",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(color: AppColors.secondaryColor),
                              ),
                            ],
                          ),
                        ),
                      PrimaryButton(
                          height: 35,
                          width: 130,
                          child: Text(
                        "WITHDRAW",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                        ),
                      ), onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>WithdrawView()));
                      })
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    height: AppSizes.screenHeight * 0.55,
                    width: AppSizes.screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.drawerBackground,
                    ),
                    child:
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: AppSizes.screenHeight*0.02,bottom: AppSizes.screenHeight*0.02),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: AppSizes.screenWidth*0.05),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 31,
                                  width: 88,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.secondaryColor),
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.secondaryColor,
                                  ),
                                  child: Text(
                                      textAlign: TextAlign.center,
                                      "Weekly",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!.copyWith(color: AppColors.primaryColor)
                                  ),),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 31,
                                width: 88,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.secondaryColor),
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.drawerBackground,
                                ),
                                child: Text(textAlign: TextAlign.center,
                                    "Monthly",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!.copyWith(color:AppColors.secondaryColor)
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 25,
                                width: 25,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(right: AppSizes.screenWidth*0.01),
                                  child: const Icon(Icons.arrow_back_ios,size: 16,),
                                )),
                            Container(alignment: Alignment.center,
                              width: AppSizes.screenWidth*0.23,
                              child: Text("June",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                                height: 25,
                                width: 25,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: AppSizes.screenWidth*0.01),
                                  child: const Icon(Icons.arrow_forward_ios,size: 16,),
                                )),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'AED 23.23',
                            style:  TextStyle(
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: AppSizes.screenHeight * 0.04),
                  child: Container(
                    height: AppSizes.screenHeight * .09,
                    width: AppSizes.screenWidth,
                    decoration: BoxDecoration(
                      color: AppColors.drawerBackground,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Earnings",
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Text(
                                'AED 23',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Sessions",
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Text(
                                "0",
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
