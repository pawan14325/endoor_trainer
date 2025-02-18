import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/presentations/home/notification_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

AppBar myAppBar({
  Color?backGroundColor,
  List<Widget>? action,
  required Widget title,
  required BuildContext context, bottom,

}) {
  return AppBar(
    bottom: bottom,
    toolbarHeight: 50,
    leadingWidth: AppSizes.screenWidth * 0.17,
    centerTitle: false,
    leading: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child:  Container(color: Colors.transparent,
            height: 30,
            width: 40,
            child:  Icon(Icons.arrow_back_ios_new_rounded,color: AppColors.whiteColor,size: 18,))),
    title: title,
    titleTextStyle: Theme.of(context).textTheme.headlineSmall,
    surfaceTintColor: Colors.transparent,
    backgroundColor: backGroundColor??AppColors.primaryColor,
    elevation: 3,
    titleSpacing: -10,
    actions: action,
  );
}
AppBar homeAppBar({
  Color?backGroundColor,
  List<Widget>? action,
  required BuildContext context,

}) {
  return AppBar(
    surfaceTintColor: AppColors.primaryColor,
    iconTheme: const IconThemeData(color: AppColors.greyColor),
    title: Text(
        'Offline',
        style: Theme.of(context).textTheme.headlineSmall,
      ),

    centerTitle: true,
    actions: [
      SizedBox(
        height: 30,
        width: 43,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.transparent,
          ),
          child: Transform.scale(
            scale: 0.5,
            child:
            Padding(
              padding:  EdgeInsets.only(left: 12),
              child: Switch(
                activeTrackColor: AppColors.secondaryColor,
                activeColor: Colors.yellow,
                inactiveThumbColor: Colors.transparent,
                inactiveTrackColor: Colors.black,
                value: false, onChanged: (bool value) {},
              ),
            ),
          ),
        ),
      ),

      IconButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationView()));
        },
        icon: Icon(CupertinoIcons.bell),
      ),
    ],
  );
}