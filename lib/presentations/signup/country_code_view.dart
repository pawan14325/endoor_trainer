import 'package:country_code_picker/country_code_picker.dart';
import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/core/common_components/primary_text_field.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:endo_trainer/presentations/signup/otp_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/app_colors.dart';

class CountryCode extends StatelessWidget {
   CountryCode({super.key});
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
          child: Padding(
            padding:  EdgeInsets.only(left: AppSizes.screenWidth*0.05,right: AppSizes.screenWidth*0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AppSizes.screenHeight * 0.023),
                Transform.translate(
                  offset: const Offset(-5, 10),
                  child: Padding(
                    padding:  EdgeInsets.only(top: AppSizes.screenHeight * 0.05),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppSizes.screenHeight*0.14,
                ),
                Center(
                  child: Image.asset(Assets.imagesLogo,scale: 4.5,),
                ),
                SizedBox(
                  height: AppSizes.screenHeight * .04,
                ),
                Text(
                  'Country            Phone ',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 50,
                  width: AppSizes.screenWidth,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: 80,
                        child: Transform.translate(
                          offset: const Offset(-2, 0),
                          child: GestureDetector(
                            onTap: () {
                              _focusNode.requestFocus();
                            },
                            child: Focus(
                              focusNode: _focusNode,
                              onFocusChange: (hasFocus) {
                                if (hasFocus) {
                                  _focusNode.unfocus();
                                }
                              },
                              child: CountryCodePicker(
                                showDropDownButton: false,
                                showFlag: false,
                                searchDecoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  prefixIcon: Icon(
                                    CupertinoIcons.search,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  hintText: "Search your country code",
                                  hintStyle: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                  filled: true,
                                  fillColor: Colors.black54,
                                ),
                                dialogSize: Size(AppSizes.screenWidth, AppSizes.screenHeight),
                                boxDecoration: const BoxDecoration(),
                                barrierColor: AppColors.greyColor,
                                searchStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                                dialogTextStyle: const TextStyle(color: Colors.white),
                                dialogBackgroundColor: Colors.black54,
                                showFlagDialog: true,
                                textStyle: const TextStyle(
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: AppSizes.screenHeight,
                        color: AppColors.greyColor,
                        width: 1,
                      ),
                      GestureDetector(
                        onTap: () {
                          _focusNode.requestFocus();
                        },
                        child: Transform.translate(
                          offset: const Offset(-30, 0),
                          child: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: AppColors.greyColor,
                            size: 25,
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-10, 0),
                        child: PrimaryTextField(
                          width: AppSizes.screenWidth * 0.52,
                          border: Border.all(color: AppColors.whiteColor),
                            hintText: "Enter phone number",maxLength: 9,),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSizes.screenHeight * .07,
                ),
                Center(
                  child: PrimaryButton(
                      height: AppSizes.screenHeight*0.05,
                      width: AppSizes.screenWidth*0.7,
                      child: Text(
                    'Next',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(
                      color: AppColors.primaryColor,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                    ),
                  ),onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpView()));
                  }),
                )


              ],
            ),
          )
      )
    );
  }
}
