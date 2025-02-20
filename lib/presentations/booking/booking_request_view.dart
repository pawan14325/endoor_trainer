import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/core/common_components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/app_colors.dart';

class BookingRequestView extends StatelessWidget {
  var selectedIndex = 0;
   BookingRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   body: SizedBox(
    //     height: AppSizes.screenHeight * 0.9999,
    //     child: Column(
    //       children: [
    //         Flexible(
    //           child: Stack(
    //               alignment: Alignment.center,
    //               children: [
    //                 SizedBox(
    //                   child: GoogleMap(
    //                           mapToolbarEnabled: false,
    //                           myLocationButtonEnabled: false,
    //                           myLocationEnabled: false,
    //                           mapType: MapType.normal,
    //                           zoomControlsEnabled: false,
    //                           scrollGesturesEnabled: true,
    //                           onMapCreated: (GoogleMapController
    //                           onMapCreatedController) async {},
    //                           initialCameraPosition: CameraPosition(
    //                             target: LatLng(30.6665, 76.8260),
    //                             zoom: 15.0,
    //                           ),
    //                         )
    //                 ),
    //               ],
    //             ),
    //           ),
    //         SizedBox(
    //               height: selectedIndex == 1
    //                   ? AppSizes.screenHeight * .52
    //                   : selectedIndex == 2
    //                   ? AppSizes.screenHeight * .35
    //                   : AppSizes.screenHeight * .38,
    //               child: selectedIndex == 2
    //                   ? SingleChildScrollView(
    //                 child:
    //                 Padding(
    //                   padding: EdgeInsets.only(top: 40, bottom: 50, left: 25, right: 25),
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Padding(
    //                         padding: EdgeInsets.only(bottom: AppSizes.screenHeight * 0.03),
    //                         child: Text(
    //                           "Please Verify the pin to start the training",
    //                           style: Theme.of(context)
    //                               .textTheme
    //                               .headlineSmall!
    //                               .copyWith(
    //                               fontWeight: FontWeight.w400),
    //                         ),
    //                       ),
    //                       Padding(
    //                         padding: EdgeInsets.only(bottom: AppSizes.screenHeight * 0.01),
    //                         child: PinCodeTextField(
    //                             textStyle: Theme.of(context)
    //                                 .textTheme
    //                                 .headlineLarge!
    //                                 .copyWith(
    //                                 fontWeight: FontWeight.w600,
    //                                 fontSize: 30),
    //                             animationCurve: Curves.easeInCubic,
    //                             pinTheme: PinTheme(
    //                                 shape:
    //                                 PinCodeFieldShape.underline,
    //                                 borderRadius:
    //                                 BorderRadius.circular(5),
    //                                 fieldHeight: 50,
    //                                 fieldWidth: 40,
    //                                 inactiveColor:
    //                                 AppColors.greyColor,
    //                                 selectedColor: AppColors.secondaryColor,
    //                                 activeColor: AppColors.secondaryColor,
    //                                 inactiveBorderWidth: 1,
    //                                 selectedBorderWidth: 1,
    //                                 activeBorderWidth: 1),
    //                             autoDisposeControllers: true,
    //                             enablePinAutofill: true,
    //                             appContext: context,
    //                             hintStyle:  TextStyle(
    //                                 color: AppColors.greyColor,
    //                                 fontSize: 22),
    //                             hintCharacter: '●',
    //                             blinkWhenObscuring: true,
    //                             cursorColor: AppColors.secondaryColor,
    //                             keyboardType: TextInputType.number,
    //                             backgroundColor: Colors.transparent,
    //                             mainAxisAlignment:
    //                             MainAxisAlignment.spaceBetween,
    //                             length: 4),
    //                       ),
    //                       Padding(
    //                         padding: EdgeInsets.only(bottom: AppSizes.screenHeight * 0.015),
    //                         child: Text('Customer Address',
    //                             style: Theme.of(context)
    //                                 .textTheme
    //                                 .headlineSmall!
    //                                 .copyWith(
    //                                 fontWeight: FontWeight.w500,
    //                                 color: AppColors.secondaryColor)),
    //                       ),
    //                       Row(
    //                         children: [
    //                            Padding(
    //                              padding: EdgeInsets.only(right: 20),
    //                              child: Icon(
    //                               Icons.circle,
    //                               size: 15,
    //                               color: AppColors.whiteColor,
    //                                                          ),
    //                            ),
    //                           SizedBox(
    //                             width: AppSizes.screenWidth * .75,
    //                             child: Text(
    //                               "snapshot.data!.result!.userAddressType.toString()",
    //                               style: Theme.of(context)
    //                                   .textTheme
    //                                   .labelMedium!
    //                                   .copyWith(
    //                                   fontWeight: FontWeight.w500,
    //                                   color: Colors.white),
    //                             ),
    //                           )
    //                         ],
    //                       )
    //                     ],
    //                   ),
    //                 ),
    //               )
    //                   : selectedIndex == 1
    //                   ? SingleChildScrollView(
    //                 physics: const NeverScrollableScrollPhysics(),
    //                 child:
    //                 Container(
    //                   // height: Get.height,
    //                   width: AppSizes.screenWidth,
    //                   decoration: const BoxDecoration(
    //                       // image: DecorationImage(
    //                       //     image:
    //                       //     AssetImage(ImagesPaths.bgBlackShade),
    //                       //     fit: BoxFit.cover)
    //                   ),
    //                   child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         SizedBox(
    //                           height: AppSizes.screenHeight * 0.01,
    //                         ),
    //                         Padding(
    //                           padding: EdgeInsets.only(bottom: 15),
    //                           child: Row(
    //                             mainAxisAlignment:
    //                             MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Row(
    //                                 children: [
    //                                   CircleAvatar(
    //                                     radius: 32,
    //                                     child: CircleAvatar(
    //                                       radius: 30,
    //                                       backgroundColor:
    //                                       Colors.transparent,
    //                                       backgroundImage: AssetImage(
    //                                           "assets/images/img_profile.png"),
    //                                     ),
    //                                   ),
    //                                   const SizedBox(
    //                                     width: 10,
    //                                   ),
    //                                   RichText(
    //                                       text: TextSpan(children: [
    //                                         TextSpan(
    //                                           text: "snapshot.data!.result!.userName.toString()",
    //                                           style: Theme.of(context)
    //                                               .textTheme
    //                                               .headlineSmall,
    //                                         ),
    //                                         TextSpan(
    //                                           text:
    //                                           " {snapshot.data!.result!.lastName.toString()}" ??
    //                                               "",
    //                                           style: Theme.of(context)
    //                                               .textTheme
    //                                               .headlineSmall,
    //                                         ),
    //                                         TextSpan(
    //                                           text:
    //                                           '\n3km away | 12min',
    //                                           style: Theme.of(context)
    //                                               .textTheme
    //                                               .labelMedium!
    //                                               .copyWith(
    //                                               color: Colors.white),
    //                                         ),
    //                                       ])),
    //                                 ],
    //                               ),
    //                               Row(
    //                                 children: [
    //                                   Padding(
    //                                     padding: EdgeInsets.only(right: 5),
    //                                     child: Icon(Icons.star,size: 22,),
    //                                   ),
    //                                   SizedBox(
    //                                     width: AppSizes.screenWidth * 0.09,
    //                                     child: Text(
    //                                       overflow: TextOverflow.ellipsis,
    //                                       "0",
    //                                       style: Theme.of(context)
    //                                           .textTheme
    //                                           .labelMedium!
    //                                           .copyWith(
    //                                           color: Colors.white),
    //                                     ),
    //                                   )
    //                                 ],
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                         Container(
    //                           height: 1,
    //                           width: AppSizes.screenWidth,
    //                           color: AppColors.greyColor,
    //                         ),
    //                         Padding(
    //                           padding: EdgeInsets.only(top: AppSizes.screenHeight * 0.015),
    //                           child: Row(
    //                             children: [
    //                               Container(
    //                                 height: 35,
    //                                 width: 125,
    //                                 decoration: BoxDecoration(
    //                                     color: AppColors.primaryColor,
    //                                     borderRadius:
    //                                     BorderRadius.circular(50),
    //                                     border: Border.all(
    //                                       color: AppColors.secondaryColor,
    //                                     )),
    //                                 child: Padding(
    //                                   padding: EdgeInsets.only(left: 10),
    //                                   child: Row(
    //                                     children: [
    //                                       Padding(
    //                                         padding: EdgeInsets.only(right: 10),
    //                                         child: Icon(Icons.arrow_forward,size: 22,),
    //                                       ),
    //                                       Text(
    //                                         "Share ETA",
    //                                         style: Theme.of(context)
    //                                             .textTheme
    //                                             .labelLarge!
    //                                             .copyWith(
    //                                             fontWeight:
    //                                             FontWeight.w500),
    //                                       )
    //                                     ],
    //                                   ),
    //                                 ),
    //                               ),
    //                               const Spacer(
    //                                 flex: 1,
    //                               ),
    //                                Padding(
    //                                  padding: EdgeInsets.only(right: 10),
    //                                  child: CircleAvatar(
    //                                   radius: 20,
    //                                   backgroundColor: AppColors.primaryColor,
    //                                    child: Icon(Icons.call,size: 22,),
    //                                  ),
    //                                ),
    //                             ],
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: EdgeInsets.only(top: AppSizes.screenHeight * 0.025,
    //                               bottom: AppSizes.screenHeight * 0.035),
    //                           child: Row(
    //                             crossAxisAlignment:
    //                             CrossAxisAlignment.start,
    //                             children: [
    //                               Transform.translate(
    //                                   offset: const Offset(0, 26),
    //                                   child: SizedBox(
    //                                     width: 25,
    //                                     child: Text(
    //                                       "4 min"
    //                                           .toString(),
    //                                       style: Theme.of(context)
    //                                           .textTheme
    //                                           .labelMedium!
    //                                           .copyWith(
    //                                           fontWeight:
    //                                           FontWeight.w500,
    //                                           color:
    //                                           AppColors.primaryColor),
    //                                       textAlign: TextAlign.center,
    //                                     ),
    //                                   )),
    //                               Column(
    //                                 children: [
    //                                   Container(
    //                                     height: AppSizes.screenHeight * 0.028,
    //                                     width: AppSizes.screenWidth * 0.030,
    //                                     decoration: BoxDecoration(
    //                                       color: Colors.white,
    //                                       border: Border.all(
    //                                           color: AppColors.whiteColor),
    //                                       shape: BoxShape.circle,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: EdgeInsets.only(top: 3, bottom: 3),
    //                                     child: Container(
    //                                       height: 3,
    //                                       width: 2,
    //                                       color: AppColors.whiteColor,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: EdgeInsets.only(top: 3, bottom: 3),
    //                                     child: Container(
    //                                       height: 3,
    //                                       width: 2,
    //                                       color: AppColors.whiteColor,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: EdgeInsets.only(top: 3, bottom: 3),
    //                                     child: Container(
    //                                       height: 3,
    //                                       width: 2,
    //                                       color: AppColors.whiteColor,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: EdgeInsets.only(top: 3, bottom: 3),
    //                                     child: Container(
    //                                       height: 3,
    //                                       width: 2,
    //                                       color: AppColors.whiteColor,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: EdgeInsets.only(top: 3, bottom: 3),
    //                                     child: Container(
    //                                       height: 3,
    //                                       width: 2,
    //                                       color: AppColors.whiteColor,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: EdgeInsets.only(top: 3, bottom: 3),
    //                                     child: Container(
    //                                       height: 3,
    //                                       width: 2,
    //                                       color: AppColors.whiteColor,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: EdgeInsets.only(top: 3, bottom: 4),
    //                                     child: Container(
    //                                       height: 3,
    //                                       width: 2,
    //                                       color: AppColors.whiteColor,
    //                                     ),
    //                                   ),
    //
    //                                    Icon(
    //                                     Icons.circle,
    //                                     color: AppColors.secondaryColor,
    //                                     size: 14,
    //                                   )
    //                                 ],
    //                               ),
    //                               SizedBox(
    //                                 width: AppSizes.screenWidth * 0.024,
    //                               ),
    //                               Expanded(
    //                                 child: Column(
    //                                   mainAxisAlignment:
    //                                   MainAxisAlignment.start,
    //                                   crossAxisAlignment:
    //                                   CrossAxisAlignment.start,
    //                                   children: [
    //                                     Padding(
    //                                       padding: EdgeInsets.only(bottom: 5),
    //                                       child: Text(
    //                                         maxLines: 2,
    //                                         "address 24 plot chandigarh",
    //                                         style: Theme.of(context)
    //                                             .textTheme
    //                                             .labelLarge
    //                                             ?.copyWith(
    //                                             color:
    //                                             AppColors.whiteColor,
    //                                             fontWeight:
    //                                             FontWeight.w500,
    //                                             fontSize: 12),
    //                                       ),
    //                                     ),
    //                                     Padding(
    //                                       padding: EdgeInsets.only(bottom: 5),
    //                                       child: SizedBox(
    //                                           width: AppSizes.screenWidth * .77,
    //                                           child: Text(
    //                                             "1.2 km",
    //                                             style: Theme.of(context)
    //                                                 .textTheme
    //                                                 .labelMedium
    //                                                 ?.copyWith(
    //                                               color:
    //                                               AppColors.hintTextColor,
    //                                             ),
    //                                           )),
    //                                     ),
    //                                     Padding(
    //                                       padding: EdgeInsets.only(top: 10, bottom: 15),
    //                                       child: Container(
    //                                         width: AppSizes.screenWidth * .80,
    //                                         height: 1,
    //                                         color: AppColors.greyColor,
    //                                       ),
    //                                     ),
    //                                     Padding(
    //                                       padding: EdgeInsets.only(bottom: 5),
    //                                       child: Text(
    //                                         maxLines: 2,
    //                                             "address plot 24 chandigarh",
    //                                         style: Theme.of(context)
    //                                             .textTheme
    //                                             .labelLarge
    //                                             ?.copyWith(
    //                                             color:
    //                                             AppColors.whiteColor,
    //                                             fontWeight:
    //                                             FontWeight.w500,
    //                                             fontSize: 12),
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               )
    //                             ],
    //                           ),
    //                         ),
    //                         Center(
    //                           child: PrimaryButton(child: Text(
    //                             'Start',
    //                             style: Theme.of(context)
    //                                 .textTheme
    //                                 .headlineSmall!
    //                                 .copyWith(
    //                                 color: AppColors.primaryColor,
    //                                 fontSize: 18,
    //                                 fontFamily: 'Montserrat'),
    //                           ), onTap: (){}),
    //                         ),
    //                         Padding(
    //                           padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
    //                           child: SizedBox(
    //                             height: AppSizes.screenHeight * 0.02,
    //                           ),
    //                         )
    //                       ]),
    //                 )
    //               )
    //                   :Container(
    //                     width: AppSizes.screenWidth,
    //                     decoration: const BoxDecoration(
    //                         // image: DecorationImage(
    //                         //     image: AssetImage(
    //                         //         ImagesPaths.bgBlackShade),
    //                         //     fit: BoxFit.cover)
    // ),
    //                     child: SingleChildScrollView(
    //                       child: Padding(
    //                         padding: EdgeInsets.only(left: 15, right: 15),
    //                         child: Column(
    //                           crossAxisAlignment:
    //                           CrossAxisAlignment.start,
    //                           children: [
    //                             Padding(
    //                               padding: EdgeInsets.only( left: AppSizes.screenWidth * 0.04,
    //                             right: AppSizes.screenWidth * 0.04,),
    //                               child: Column(
    //                                 crossAxisAlignment:
    //                                 CrossAxisAlignment.start,
    //                                 children: [
    //                                   Row(
    //                                     mainAxisAlignment:
    //                                     MainAxisAlignment.spaceBetween,
    //                                     children: [
    //                                       Row(
    //                                         children: [
    //                                   CircleAvatar(
    //                                   radius: 32,
    //                                   backgroundColor:
    //                                   AppColors.secondaryColor,
    //                                   child: CircleAvatar(
    //                                   radius: 30,
    //                                   backgroundImage:
    //                                   AssetImage(
    //                                   "assets/images/img_profile.png"),
    //                                   ),
    //                                   ),
    //                                            SizedBox(
    //                                             width: 10,
    //                                           ),
    //                                           RichText(
    //                                               text: TextSpan(children: [
    //                                                 TextSpan(
    //                                                   text: "name",
    //                                                   style: Theme.of(context)
    //                                                       .textTheme
    //                                                       .headlineSmall,
    //                                                 ),
    //                                                 TextSpan(
    //                                                   text:
    //                                                   "lastName",
    //                                                   style: Theme.of(context)
    //                                                       .textTheme
    //                                                       .headlineSmall,
    //                                                 ),
    //                                                 TextSpan(
    //                                                   text:
    //                                                   '\n12.2km away | 22min',
    //                                                   style: Theme.of(context)
    //                                                       .textTheme
    //                                                       .labelMedium!
    //                                                       .copyWith(
    //                                                       color:
    //                                                       Colors.white),
    //                                                 ),
    //                                               ])),
    //                                         ],
    //                                       ),
    //                                     ],
    //                                   ),
    //                                   Text(
    //                                     'Client address',
    //                                     style: Theme.of(context)
    //                                         .textTheme
    //                                         .headlineSmall,
    //                                   ),
    //                                   Text(
    //                                     "address",
    //                                     style: Theme.of(context)
    //                                         .textTheme
    //                                         .labelMedium!
    //                                         .copyWith(color: Colors.white),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                             Padding(
    //                               padding: EdgeInsets.only(top: 30, bottom: 5),
    //                               child: Center(
    //                                 child: PrimaryButton(child: Text(
    //                                   'Accept',
    //                                   style: Theme.of(context)
    //                                       .textTheme
    //                                       .headlineSmall!
    //                                       .copyWith(
    //                                       color: AppColors.primaryColor,
    //                                       fontSize: 18,
    //                                       fontFamily:
    //                                       'Montserrat'),
    //                                 ), onTap: (){}),
    //                               ),
    //                             ),
    //                             Padding(
    //                               padding: EdgeInsets.only(top: 10,),
    //                               child: Center(
    //                                 child: PrimaryButton(child:  Text(
    //                                   'Reject',
    //                                   style: Theme.of(context)
    //                                       .textTheme
    //                                       .headlineSmall!
    //                                       .copyWith(
    //                                       color: AppColors.secondaryColor,
    //                                       fontSize: 18,
    //                                       fontFamily:
    //                                       'Montserrat'),
    //                                 ), onTap: (){}),
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               height: AppSizes.screenHeight * 0.02,
    //                             ),
    //                             //
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   )
    //         )]))
                );
                    }
}