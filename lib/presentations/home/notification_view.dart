import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      appBar: myAppBar(title: Text("Notifications"), context: context),
      child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: AppSizes.screenWidth*0.05,right: AppSizes.screenWidth*0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "This week",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.secondaryColor, fontWeight: FontWeight.w400),
                ),
                buildNotificationList(context)
              ],
            ),
          ),
        ),
      );
  }
}
Widget buildNotificationList(BuildContext context) {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    itemCount: 5,
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.only(top: AppSizes.screenHeight*0.01),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.03),
              child: Container(
                alignment: Alignment.center,
                height: AppSizes.screenHeight * .05,
                width: AppSizes.screenWidth * .11,
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.drawerBackground,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: AppSizes.screenWidth * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: AppSizes.screenWidth * .7,
                    child: Text(
                      "Lorem Ipsum has been the industry's standard Lorem Ipsum has been the  ",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  Text(
                   "9:01AM",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppColors.hintTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
