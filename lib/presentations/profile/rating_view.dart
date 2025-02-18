import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../core/app_colors.dart';

class RatingView extends StatelessWidget {
  const RatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: Text("Rating & Reviews"), context: context),
      body: AppBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: AppSizes.screenWidth*0.05, right: AppSizes.screenWidth*0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.01),
                  child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Reviews ',
                                style: Theme.of(context).textTheme.headlineSmall
                            ),
                            TextSpan(
                                text: "(5)",
                                style: Theme.of(context).textTheme.headlineSmall
                            ),
                          ]
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.01),
                  child: Container(
                    height: 1,
                    width: AppSizes.screenWidth,
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(
                  height: AppSizes.screenHeight,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.029),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.02),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: AppSizes.screenWidth*0.03),
                                          child: CircleAvatar(
                                            radius: 25,
                                            backgroundColor: AppColors.greyColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: AppSizes.screenWidth*0.42,
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(overflow: TextOverflow.ellipsis,"John Doe",style:Theme.of(context).textTheme.headlineSmall),
                                              Text("1 day ago",
                                                  style:Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w500,color: AppColors.hintTextColor)
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: AppSizes.screenWidth*0.04),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: AppSizes.screenWidth*0.02),
                                            child: RatingBar.builder(
                                              itemSize: 16,
                                              initialRating: 3,
                                              minRating: 0,
                                              unratedColor: AppColors.whiteColor,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding: EdgeInsets.zero, // No padding
                                              itemBuilder: (context, _) => Container(
                                                width: 5.0,
                                                height: 30.0,
                                                alignment: Alignment.center,
                                                child: Icon(
                                                  Icons.star,
                                                  size:27.0, // Adjust the size if needed
                                                  color: AppColors.secondaryColor,
                                                ),
                                              ),
                                              onRatingUpdate: (rating) {
                                              },
                                              ignoreGestures: true,
                                            ),
                                          ),

                                          Text(
                                            "1.0",
                                            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.hintTextColor,),)

                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
