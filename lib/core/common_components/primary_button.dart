import 'package:flutter/material.dart';
 import '../app_colors.dart';
import '../app_sizes.dart';

class PrimaryButton extends StatelessWidget {
  final Widget child;
  final double? width, height;
  Color? backGroundColor = AppColors.secondaryColor;
  Color? rippleColor;
  Function onTap;
  // Constructor with proper initialization
  PrimaryButton({
    super.key,
    required this.child, // Use 'this.child' to initialize the field
    this.width,
    this.height,
    this.backGroundColor,
    this.rippleColor,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30 ),
      onTap: () {
        onTap();
      },
      child: Container(
        height: height?? AppSizes.screenHeight*0.05,  // Use the height value or the default
        width: width??AppSizes.screenWidth*0.7, //Use the width value or the default
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backGroundColor?? AppColors.secondaryColor,
          border: Border.all(color: AppColors.secondaryColor)
        ),
        child: Center(
            child: child
        ),
      ),
    );
  }
}