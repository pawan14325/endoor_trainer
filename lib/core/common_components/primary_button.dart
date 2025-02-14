import 'package:flutter/material.dart';
 import '../app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final Widget child;
  final double? width, height;
  Color? backGroundColor = Colors.red;
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

      borderRadius: BorderRadius.circular(12 ),
      onTap: () {
        onTap();
      },

      child: Container(
        height: height ,  // Use the height value or the default
        width: width , //Use the width value or the default
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.secondaryColor,
        ),
        child: Center(
            child: child
        ),
      ),
    );
  }
}