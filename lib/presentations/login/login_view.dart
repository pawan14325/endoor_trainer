import 'package:country_code_picker/country_code_picker.dart';
import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/primary_text_field.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:endo_trainer/presentations/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/app_colors.dart';
import '../../core/common_components/primary_button.dart';

class LoginView extends StatelessWidget {
    LoginView({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      height: AppSizes.screenHeight * .49,
                      width: AppSizes.screenWidth * 9,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage(
                            Assets.imagesLoginBackground,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      left: AppSizes.screenWidth * 0.03,
                      bottom: AppSizes.screenHeight * 0.05,
                      child: Padding(
                        padding:  EdgeInsets.only(bottom: 50, left:  AppSizes.screenWidth* .05),
                        child: Text(
                          'Nice to see you again,\nLet’s Begin ...',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: const Offset(0, -70),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: AppSizes.screenWidth * .05, right: AppSizes.screenWidth * .05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: AppSizes.screenHeight * .008,
                              top: AppSizes.screenHeight * .02),
                          child: Text(
                            "Country             Phone",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              border: Border.all(
                                  color: AppColors.greyColor),
                              borderRadius: BorderRadius.circular(5)),
                          height: 50,
                          width: AppSizes.screenWidth,
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  width: 80,
                                  child: Transform.translate(
                                    offset: const Offset(-6, 0),
                                    child: CountryCodePicker(
                                      showDropDownButton: false,
                                      showFlag: false,
                                      searchDecoration:
                                      const InputDecoration(
                                        hintText:
                                        "Search your country code",
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                            color: Colors.white),
                                        filled: true,
                                        fillColor: Colors.black54,
                                      ),
                                      dialogSize:
                                      Size(AppSizes.screenWidth, AppSizes.screenHeight),
                                      boxDecoration:
                                      const BoxDecoration(),
                                      barrierColor:
                                      AppColors.greyColor,
                                      searchStyle: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.white),
                                      dialogTextStyle: const TextStyle(
                                          color: Colors.white),
                                      dialogBackgroundColor:
                                      Colors.black54,
                                      showFlagDialog: true,
                                      textStyle:  TextStyle(
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )),
                              Container(
                                height: AppSizes.screenHeight,
                                color: AppColors.greyColor,
                                width: 1,
                              ),
                              Transform.translate(
                                  offset: const Offset(-30, 0),
                                  child:  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: AppColors.greyColor,
                                    size: 25,
                                  )),
                              Transform.translate(
                                offset: const Offset(-10, 0),
                                child: SizedBox(
                                  height: 50,
                                  width:AppSizes.screenWidth * 0.52,
                                  child: TextField(
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(
                                            64),
                                        FilteringTextInputFormatter
                                            .deny(RegExp(r'\s')),
                                      ],
                                      maxLength: 9,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                          color: AppColors.primaryColor),
                                      keyboardType:
                                      TextInputType.number,
                                      decoration: InputDecoration(
                                          contentPadding:
                                          EdgeInsets.only(
                                              top:
                                              AppSizes.screenHeight * .00),
                                          counterText: "",
                                          hintText:
                                          'Enter phone number',
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                              color: AppColors
                                                  .greyColor,
                                              fontSize: 14),
                                          border: InputBorder.none,
                                          fillColor: AppColors.whiteColor)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(bottom: AppSizes.screenHeight * .008,
                              top: AppSizes.screenHeight * .02),
                          child: Text(
                            "Password",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        PrimaryTextField(hintText: "Enter your password"),
                        Padding(
                          padding:  EdgeInsets.only(top: AppSizes.screenHeight * .013),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                      color: AppColors.secondaryColor),
                                  children:  [
                                    TextSpan(
                                      text: 'Forgot ',
                                      style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    TextSpan(
                                      text: 'Password',
                                      style: TextStyle(
                                          color: AppColors.secondaryColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: ""),
                                    ),
                                    TextSpan(
                                      text: ' ?',
                                      style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: ""),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding:  EdgeInsets.only(top: AppSizes.screenHeight * .17),
                            child: PrimaryButton(
                                height: AppSizes.screenHeight*0.05,
                                width: AppSizes.screenWidth*0.7,
                                backGroundColor: Colors.transparent,
                                child: Text(
                                  "Log In",
                                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                      color: AppColors.secondaryColor,
                                      fontSize: 18,
                                      fontFamily: 'Montserrat'
                                  ),
                                ),
                                onTap: () {}),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              left: AppSizes.screenWidth * 0.035,
              top: AppSizes.screenHeight * 0.045,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                  color: Colors.white,
                ),
                onPressed: () {
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingView()));
                },
              ))
        ],
      ),
    );
  }
}
