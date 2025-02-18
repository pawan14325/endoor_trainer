import 'package:endo_trainer/presentations/signup/trainer_passport_view.dart';
import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class TrainerDocumentOptionView extends StatelessWidget {
   TrainerDocumentOptionView({super.key});
  final list  = [
    "Clear Images: Ensure documents are clear, not blurry.",
    "Correct Naming: Upload each document with its respective name.",
    "Alignment: Properly align the camera for accurate capture.",
    "Review & Submit: Double-check all documents before submitting."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        leadingWidth: AppSizes.screenWidth * 0.17,
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.primaryColor,
        elevation: 3,
        titleSpacing: -10,
        leading: const SizedBox(),
        title: Transform.translate(
            offset: Offset(-AppSizes.screenWidth * 0.09, -3),
            child: Image.asset(
              Assets.imagesLogo,
              height: 36,
              width: 146,
            )),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TrainerPassportView()));
            },
            icon: Container(
              alignment: Alignment.center,
              height: 24,
              width: 44,
              decoration: BoxDecoration(
                  color: AppColors.drawerBackground,
                  borderRadius: const BorderRadius.all(Radius.circular(24))),
              child: Text(
                'Skip',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppColors.secondaryColor, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            width: AppSizes.screenWidth * 0.04,
          )
        ],
      ),
      body: AppBackground(
        child: Padding(
          padding:  EdgeInsets.only(left: AppSizes.screenWidth*0.05,right: AppSizes.screenWidth*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: AppSizes.screenHeight * .02, bottom: AppSizes.screenHeight * .02),
                child: Text(
                  "Upload your Documents",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: AppSizes.screenHeight * .02, bottom: AppSizes.screenHeight * .02),
                child: Text(
                  "Begin your journey by uploading your selected category certificate, passport and Emirates ID.",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: AppSizes.screenHeight * .01),
                child: Container(
                  width: AppSizes.screenWidth,
                  decoration: BoxDecoration(
                      color: AppColors.drawerBackground,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:  EdgeInsets.only(left: AppSizes.screenWidth * 0.06,
                            right: AppSizes.screenWidth * 0.02,
                            top: AppSizes.screenHeight * 0.02,
                            bottom: AppSizes.screenHeight * 0.01),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(right: 15),
                              child: Image.asset(
                                Assets.imagesIcCookTick,
                                height: 20,
                                width: 20,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:  EdgeInsets.only(top: 2),
                                child: Text(
                                  list[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.whiteColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: AppSizes.screenHeight * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
