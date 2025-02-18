import 'package:endo_trainer/core/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_colors.dart';

class PrimaryTextField extends StatelessWidget {
  final String hintText;
  late final int? maxLength;
  late final int? maxLine;
  late final int? minLine;
  final double? width, height;
  final BoxBorder? border;
  TextEditingController? controller;

  PrimaryTextField({
    super.key,
    required this.hintText,
     this.controller,
    this.maxLength,
    this.maxLine,
    this.minLine,
    this.width,
    this.height,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50,
      width: width ?? AppSizes.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: border ?? Border.all(color: AppColors.greyColor),
        shape: BoxShape.rectangle,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: TextFormField(
          controller: controller,
          maxLength: maxLength,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: AppColors.primaryColor),
          keyboardType: TextInputType.visiblePassword,
          maxLines: maxLine,
          minLines: minLine,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.only(top: AppSizes.screenHeight * .004, left: 5),
            counterText: "",
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColors.hintTextColor,
                  fontSize: 14,
                ),
            border: InputBorder.none,
            fillColor: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
