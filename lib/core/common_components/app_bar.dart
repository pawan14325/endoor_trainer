import 'package:endo_trainer/core/app_sizes.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

AppBar myAppBar({
  Color?backGroundColor,
  List<Widget>? action,
  required Widget title,
  required BuildContext context,

}) {
  return AppBar(
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
    surfaceTintColor: Colors.transparent,
    backgroundColor: backGroundColor??AppColors.primaryColor,
    elevation: 3,
    titleSpacing: -10,
    actions: action,
  );
}