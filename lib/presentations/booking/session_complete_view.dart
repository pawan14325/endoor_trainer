import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:endo_trainer/presentations/booking/session_detail_view.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class SessionCompleteView extends StatelessWidget {
  const SessionCompleteView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: AppSizes.screenHeight * 0.02,top: AppSizes.screenHeight*0.03),
              child: CircleAvatar(
                radius: 62,
                backgroundColor: AppColors.secondaryColor,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.hintTextColor,
                  child: Image.asset(Assets.imagesIcTickCreatePassword,scale: 1.5,),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.025),
              child: Text('Session Completed\nsuccessfully',style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.secondaryColor),textAlign: TextAlign.center,),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: AppSizes.screenHeight*0.15),
              child: RichText(textAlign:TextAlign.center,text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Your session has been successfully completed.",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    TextSpan(
                        text: '\n Please review the details and ',
                        style: Theme.of(context).textTheme.labelMedium
                    ),TextSpan(
                        text: 'share your feedback',
                        style: Theme.of(context).textTheme.labelMedium
                    )
                  ]
              )),
            ),
            PrimaryButton(child: Text('View Details',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.primaryColor,fontSize: 18,
                fontFamily: 'Montserrat'),),
                onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SessionDetailView()));
                })

          ],
        ),
      ),
    );
  }
}
