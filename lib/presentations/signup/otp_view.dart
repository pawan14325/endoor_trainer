import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:endo_trainer/presentations/signup/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../core/app_colors.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
        child: Padding(
          padding:  EdgeInsets.only(left: AppSizes.screenWidth*0.05,right: AppSizes.screenWidth*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Transform.translate(
                  offset: const Offset(-17,50),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios,size: 18,color: Colors.white,))),
              SizedBox(
                height: AppSizes.screenHeight*0.08,
              ),
              Text(
                'Verification',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                height: AppSizes.screenHeight * 0.03,
              ),
              Text(
                'Check your phone. We’ve sent\nyou the OTP at your number',
                    // ' ${controller.phoneNumber!["otp"] != "" || controller.phoneNumber!["phoneNumber"] !=""?"Email":"Number"}',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(
                height: AppSizes.screenHeight * 0.08,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 5,right: 5),
                child: PinCodeTextField(
                  textStyle: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontWeight: FontWeight.w600, fontSize: 30),
                  animationCurve: Curves.easeInCubic,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 34,
                    inactiveColor: AppColors.greyColor,
                    selectedColor: AppColors.secondaryColor,
                    activeColor: AppColors.secondaryColor,
                    inactiveBorderWidth: 1,
                    selectedBorderWidth: 1,
                    activeBorderWidth: 1,
                  ),
                  autoDisposeControllers: true,
                  enablePinAutofill: true,
                  appContext: context,
                  hintStyle: const TextStyle(color: AppColors.greyColor, fontSize: 22),
                  hintCharacter: '●',
                  blinkWhenObscuring: true,
                  cursorColor: AppColors.secondaryColor,
                  keyboardType: TextInputType.number,
                  backgroundColor: Colors.transparent,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  length: 6,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                ),
              ),
              Center(
                child: Text(
                    "Resend OTP",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: AppColors.secondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: AppSizes.screenHeight * 0.08,
              ),
              Center(
                child: Text(
                  'Resend the code if not received?',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: AppColors.whiteColor, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: AppSizes.screenHeight * 0.02,
              ),
              Center(
                child: PrimaryButton(
                    height: AppSizes.screenHeight*0.05,
                    width: AppSizes.screenWidth*0.7,
                    child:Text('Verify', textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.black,fontSize: 18,
                          fontFamily: 'Montserrat',
                        )),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupView()));
                    }),
              )
            ],
          ),
        ),
      );
  }
}
