import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../core/app_colors.dart';

class ReviewRatingView extends StatelessWidget {
  var writeReviewVisible = false;
   ReviewRatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      appBar: myAppBar(title: Text("Review Your Booking/User"), context: context),
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: AppSizes.screenHeight*0.03,left: AppSizes.screenWidth*0.025,right: AppSizes.screenWidth*0.025),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: AppSizes.screenHeight * .02, right: AppSizes.screenHeight * .08),
                  child: CircleAvatar(
                    maxRadius: 35,
                    backgroundColor: AppColors.primaryColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Richard",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Please share your experience with a quick review",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.whiteColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: RatingBar.builder(
                    initialRating: 0,
                    minRating: 0,
                    unratedColor: AppColors.whiteColor,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemPadding:
                    const EdgeInsets.symmetric(horizontal: 9.0),
                    itemBuilder: (context, _) => Icon(Icons.star,size: 20,),
                    onRatingUpdate: (rating) {},
                  ),
                ),
                Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                        writeReviewVisible  == false?
                        "Tap the stars to rate":"Check what applies to Richard",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.whiteColor)),
                      ),
                 Visibility(
                    visible: writeReviewVisible,
                    child: Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Write a Review",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10,bottom: AppSizes.screenHeight*.07),
                            child: Container(
                              height: AppSizes.screenHeight*0.15,
                              width: AppSizes.screenWidth,
                              decoration: BoxDecoration(
                                color: AppColors.greyColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child:  Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                                child: TextField(
                                  textInputAction: TextInputAction.done,
                                  maxLength: 250,
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  buildCounter: (
                                      BuildContext context, {
                                        required int currentLength,
                                        required bool isFocused,
                                        required int? maxLength,
                                      }) {
                                    return Text(
                                      '$currentLength/$maxLength',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 12,color: AppColors.whiteColor), // Adjust the font size here
                                    );
                                  },
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    border: InputBorder.none,
                                    hintText: 'Enter your review here',
                                    hintStyle:   TextStyle(
                                      color: AppColors.hintTextColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          PrimaryButton(
                          child: Text(
                              "Submit",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(color: AppColors.primaryColor,fontSize: 18,
                                  fontFamily: 'Montserrat')), onTap: (){

                          })
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
