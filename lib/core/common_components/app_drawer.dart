import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:endo_trainer/presentations/booking/booking_history_view.dart';
import 'package:endo_trainer/presentations/booking/session_running_view.dart';
import 'package:endo_trainer/presentations/earning/earning_view.dart';
import 'package:endo_trainer/presentations/home/home_view.dart';
import 'package:endo_trainer/presentations/profile/docuemnt_view.dart';
import 'package:endo_trainer/presentations/profile/profile_view.dart';
import 'package:endo_trainer/presentations/profile/support_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

class DrawerItem {
  final String title;
  final String imagePath;
  final String route;

  DrawerItem({
    required this.title,
    required this.imagePath,
    required this.route,
  });
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  MyDrawerState createState() => MyDrawerState();
}

class MyDrawerState extends State<MyDrawer> {
  int selectedTile = -1;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: AppSizes.screenWidth*0.78,
      backgroundColor: AppColors.drawerBackground,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: AppSizes.screenWidth*0.02,
          ),
          SizedBox(
            height: AppSizes.screenHeight*.15,
            child: Padding(
              padding: EdgeInsets.only(top: AppSizes.screenHeight*0.05,left: AppSizes.screenWidth*0.09,bottom: AppSizes.screenWidth*0.03),
              child: Row(
                children: [
                 GestureDetector(
                    onTap: (){
                    },
                    child:  CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.primaryColor,
                  )),
                  SizedBox(width: AppSizes.screenWidth*0.06,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text('Name',
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.secondaryColor),),
                      ),
                      Text(
                        '1234567890',
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.hintTextColor),),
                    ],
                  ),
                ],

              ),
            ),
          ),

          Container(color: selectedTile == 0 ? AppColors.secondaryColor : Colors.transparent,height: 55,width: AppSizes.screenWidth,
            child: Padding(
              padding: EdgeInsets.only(left: AppSizes.screenWidth*0.05),
              child: ListTile(
                selectedColor: AppColors.secondaryColor,
                title: Row(
                  children: [
                    Image.asset(Assets.imagesIcHomeBottomNavBar,
                      scale: 4,
                      color: selectedTile == 0 ? AppColors.primaryColor : AppColors.whiteColor,),
                    SizedBox(
                      width: AppSizes.screenWidth*0.05,
                    ),
                    Text("Home",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color:  selectedTile == 0 ? AppColors.primaryColor : AppColors.whiteColor,),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedTile = 0;
                  });
                  Navigator.pop(context);
                  // Navigator.pushReplacement(
                  //   context,
                  //   PageRouteBuilder(
                  //     pageBuilder: (context, animation1, animation2) => const HomeView(),
                  //     transitionDuration: const Duration(milliseconds: 600),
                  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  //       const begin = Offset(-1.0, 0.0);
                  //       const end = Offset.zero;
                  //       const curve = Curves.ease;
                  //       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  //       var offsetAnimation = animation.drive(tween);
                  //       return SlideTransition(
                  //         position: offsetAnimation,
                  //         child: child,
                  //       );
                  //     },
                  //   ),
                  // );
                },
              ),
            ),
          ),
          Container(
            color: selectedTile == 1 ? AppColors.secondaryColor : Colors.transparent,height: 55,width: AppSizes.screenWidth,
            child: Padding(
              padding:  EdgeInsets.only(left: AppSizes.screenWidth*0.05),
              child: ListTile(

                selectedColor: AppColors.secondaryColor,
                title: Row(
                  children: [
                    Image.asset(Assets.imagesIcHistoryBottomNavBar,
                      scale: 4,
                      color: selectedTile == 1 ? AppColors.primaryColor : AppColors.whiteColor,),
                    SizedBox(
                      width: AppSizes.screenWidth*0.05,
                    ),
                    Text("My Sessions",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 1 ? AppColors.primaryColor : AppColors.whiteColor,),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedTile = 1; // Set selected index
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SessionRunningView()));
                },
              ),
            ),
          ),
          Container(
            color: selectedTile == 2 ? AppColors.secondaryColor : Colors.transparent,height: 55,width: AppSizes.screenWidth,
            child: Padding(
              padding: EdgeInsets.only(left: AppSizes.screenWidth*0.05),
              child: ListTile(

                selectedColor: AppColors.secondaryColor,
                title: Row(
                  children: [
                    Image.asset(Assets.imagesIcEarningBottomNavBar,
                      scale: 4,
                      color: selectedTile == 2 ? AppColors.primaryColor : AppColors.whiteColor,),
                    SizedBox(
                      width: AppSizes.screenWidth*0.05,
                    ),
                    Text("My Earnings",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 2 ? AppColors.primaryColor : AppColors.whiteColor,),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedTile = 2;
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EarningView()));
                },
              ),
            ),
          ),
          Container(
            color: selectedTile == 3 ? AppColors.secondaryColor : Colors.transparent,height: 55,width: AppSizes.screenWidth,
            child: Padding(
              padding: EdgeInsets.only(left: AppSizes.screenWidth*0.05),
              child: ListTile(

                selectedColor: AppColors.secondaryColor,
                title: Row(
                  children: [
                    Icon(CupertinoIcons.doc,size: 24,
                  color: selectedTile == 3 ? AppColors.primaryColor : AppColors.whiteColor,
                    ),
                    SizedBox(
                      width: AppSizes.screenWidth*0.05,
                    ),
                    Text("Documents",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 3 ? AppColors.primaryColor : AppColors.whiteColor,),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedTile = 3;
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DocumentView()));

                },
              ),
            ),
          ),
          Container(
            color: selectedTile == 4 ? AppColors.secondaryColor : Colors.transparent,height: 55,width: AppSizes.screenWidth,

            child: Padding(
              padding: EdgeInsets.only(left:AppSizes.screenWidth*0.05),
              child: ListTile(

                selectedColor: AppColors.secondaryColor,
                title: Row(
                  children: [
                    Image.asset(Assets.imagesIcProfileBottomNavBar,
                      scale: 4,
                      color: selectedTile == 4 ? AppColors.primaryColor : AppColors.whiteColor,),
                    SizedBox(
                      width: AppSizes.screenWidth*0.05,
                    ),
                    Text("Profile",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 4 ? AppColors.primaryColor : AppColors.whiteColor,),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedTile = 4;
                  });
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileView()));

                },
              ),
            ),
          ),
          Container(
            color: selectedTile == 5 ? AppColors.secondaryColor : Colors.transparent,height: 55,width: AppSizes.screenWidth,

            child: Padding(
              padding: EdgeInsets.only(left: AppSizes.screenWidth*0.05),
              child: ListTile(

                selectedColor: AppColors.secondaryColor,
                title: Row(
                  children: [
                    Icon(Icons.headphones,size: 24,
                      color: selectedTile == 5 ? AppColors.primaryColor : AppColors.whiteColor,
                    ),
                    SizedBox(
                      width: AppSizes.screenWidth*0.05,
                    ),
                    Text("Support",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 5 ? AppColors.primaryColor : AppColors.whiteColor,),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedTile = 5;
                  });
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>SupportView()));
                },
              ),
            ),
          ),
          Container(
            color: selectedTile == 6 ? AppColors.secondaryColor : Colors.transparent,height: 55,width: AppSizes.screenWidth,

            child: Padding(
              padding:  EdgeInsets.only(left: AppSizes.screenWidth*0.05),
              child: ListTile(

                selectedColor: AppColors.secondaryColor,
                title: Row(
                  children: [
                    Image.asset(Assets.imagesIcTermConditionDrawer,
                      scale: 4,
                      color: selectedTile == 6 ? AppColors.primaryColor : AppColors.whiteColor,),
                    SizedBox(
                      width: AppSizes.screenWidth*0.05,
                    ),
                    Text("Terms & Conditions",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 6 ? AppColors.primaryColor : AppColors.whiteColor,),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedTile = 6;
                  });
                  Navigator.pop(context);
                  // Navigator.pushReplacement(
                  //   context,
                  //   PageRouteBuilder(
                  //     pageBuilder: (context, animation1, animation2) => const HomeView(),
                  //     transitionDuration: const Duration(milliseconds: 600),
                  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  //       const begin = Offset(-1.0, 0.0);
                  //       const end = Offset.zero;
                  //       const curve = Curves.ease;
                  //
                  //       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  //       var offsetAnimation = animation.drive(tween);
                  //
                  //       return SlideTransition(
                  //         position: offsetAnimation,
                  //         child: child,
                  //       );
                  //     },
                  //   ),
                  // );
                  // Add functionality here

                },
              ),
            ),
          ),
          Container(
            color: selectedTile == 7 ? AppColors.secondaryColor : Colors.transparent,height: 55,width: AppSizes.screenWidth,

            child: Padding(
              padding: EdgeInsets.only(left: AppSizes.screenWidth*0.05),
              child: ListTile(

                selectedColor: AppColors.secondaryColor,
                title: Row(
                  children: [
                    Image.asset(Assets.imagesIcPrivacyPolicyDrawer,
                      scale: 4,
                      color: selectedTile == 7 ? AppColors.primaryColor : AppColors.whiteColor,),
                    SizedBox(
                      width: AppSizes.screenWidth*0.05,
                    ),
                    Text("Privacy Policy",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 7 ? AppColors.primaryColor : AppColors.whiteColor,),
                    ),
                  ],
                ),
                onTap: () {
                  setState(() {
                    selectedTile = 7;
                  });
                  Navigator.pop(context);
                  // Navigator.pushReplacement(
                  //   context,
                  //   PageRouteBuilder(
                  //     pageBuilder: (context, animation1, animation2) => const HomeView(),
                  //     transitionDuration: const Duration(milliseconds: 600),
                  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  //       const begin = Offset(-1.0, 0.0);
                  //       const end = Offset.zero;
                  //       const curve = Curves.ease;
                  //
                  //       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  //       var offsetAnimation = animation.drive(tween);
                  //
                  //       return SlideTransition(
                  //         position: offsetAnimation,
                  //         child: child,
                  //       );
                  //     },
                  //   ),
                  // );

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
