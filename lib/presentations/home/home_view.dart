import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/app_drawer.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';

import '../../core/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      appBar: homeAppBar( context: context),
      drawer: MyDrawer(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: AppSizes.screenHeight * 0.24,
                width: AppSizes.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: PageView(
                  children: [
                    Image.asset(Assets.imagesHomePageView, fit: BoxFit.cover),
                  ],
                ),
              ),
              SizedBox(
                height: AppSizes.screenHeight * 0.01,
              ),
              PageViewIndicator(
                      currentSize: 10,
                      otherSize: 10,
                      length: 3,
                      currentColor: AppColors.secondaryColor,
                      currentIndex: 0,
                    ),
              Padding(
                padding: EdgeInsets.only(left: AppSizes.screenWidth*0.04, right:AppSizes.screenWidth*0.04, top: AppSizes.screenHeight*0.02,bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: "Quick ",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(color: AppColors.secondaryColor),
                                children: [
                                  TextSpan(
                                    text: "Glance",
                                    style: Theme.of(context).textTheme.headlineMedium,
                                  )
                                ])),
                        Container(
                                height: AppSizes.screenHeight * 0.035,
                                width: AppSizes.screenWidth * 0.23,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.secondaryColor),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "last 3 days",
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.labelSmall!.copyWith(color: AppColors.secondaryColor),
                                    ),
                                    Icon(Icons.arrow_drop_down,color: AppColors.hintTextColor,)
                                  ],
                                ),
                              ),

                      ],
                    ),
                    SizedBox(
                      height: AppSizes.screenHeight*0.02,
                    ),
                    SizedBox(
                      width: AppSizes.screenWidth,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child:
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 20,
                            mainAxisExtent: 155,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                                height: AppSizes.screenHeight * 0.15,
                                width: AppSizes.screenWidth * 0.42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.drawerBackground,

                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: AppSizes.screenHeight * 0.07,
                                      width: 140,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.primaryColor,
                                      ),
                                      child: Text(
                                        overflow: TextOverflow.ellipsis,
                                        "50",
                                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                          color: AppColors.secondaryColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8), // Adjust the gap here
                                    Text(
                                      "Total",
                                      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.whiteColor,),
                                    ),

                                    const SizedBox(height: 4), // Adjust the gap here
                                    Text(
                                      "Sessions",
                                      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.whiteColor,),
                                    ),
                                  ],
                                ),
                              );
                          },
                        ),

                      ),
                    ),

                  ],
                ),
              ),


            ],
          ),
        ),
      );
  }
}
