import 'package:endo_trainer/core/app_sizes.dart';
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
  int selectedTileIndex = 0;
  int selectedTile =-1;
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

          // Container(color: selectedTile == 0 ? AppColors.yellow : Colors.transparent,height: 55,width: Get.width,
          //   child: ListTile(
          //     selectedColor: AppColors.yellow,
          //     title: Row(
          //       children: [
          //         Image.asset(ImagesPaths.home,
          //           scale: 4,
          //           color: selectedTile == 0 ? AppColors.black : AppColors.impgrey,),
          //         SizedBox(
          //           width: Get.width*0.05,
          //         ),
          //         Text("Home",
          //           style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color:  selectedTile == 0 ? AppColors.black : AppColors.impgrey,),
          //         ),
          //       ],
          //     ),
          //     onTap: () {
          //       setState(() {
          //         selectedTile = 0;
          //       });
          //       Navigator.pushReplacement(
          //         context,
          //         PageRouteBuilder(
          //           pageBuilder: (context, animation1, animation2) => const HomeUi(),
          //           transitionDuration: const Duration(milliseconds: 600),
          //           transitionsBuilder: (context, animation, secondaryAnimation, child) {
          //             const begin = Offset(-1.0, 0.0);
          //             const end = Offset.zero;
          //             const curve = Curves.ease;
          //
          //             var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          //             var offsetAnimation = animation.drive(tween);
          //
          //             return SlideTransition(
          //               position: offsetAnimation,
          //               child: child,
          //             );
          //           },
          //         ),
          //       );
          //       // Add functionality here
          //
          //     },
          //   ).paddingOnly(left: Get.width*0.05),
          // ),
          // Container(
          //   color: selectedTile == 1 ? AppColors.yellow : Colors.transparent,height: 55,width: Get.width,
          //   child: ListTile(
          //
          //     selectedColor: AppColors.yellow,
          //     title: Row(
          //       children: [
          //         Image.asset(ImagesPaths.mysession,
          //           scale: 4,
          //           color: selectedTile == 1 ? AppColors.black : AppColors.impgrey,),
          //         SizedBox(
          //           width: Get.width*0.05,
          //         ),
          //         Text("My Sessions",
          //           style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 1 ? AppColors.black : AppColors.impgrey,),
          //         ),
          //       ],
          //     ),
          //     onTap: () {
          //       setState(() {
          //         selectedTile = 1; // Set selected index
          //       });
          //       Get.toNamed(AppRoutes.booking) ;           // Add functionality here
          //
          //     },
          //   ).paddingOnly(left: Get.width*0.05),
          // ),
          // Container(
          //   color: selectedTile == 2 ? AppColors.yellow : Colors.transparent,height: 55,width: Get.width,
          //   child: ListTile(
          //
          //     selectedColor: AppColors.yellow,
          //     title: Row(
          //       children: [
          //         Image.asset(ImagesPaths.earningHome,
          //           scale: 6,
          //           color: selectedTile == 2 ? AppColors.black : AppColors.impgrey,),
          //         SizedBox(
          //           width: Get.width*0.05,
          //         ),
          //         Text("My Earnings",
          //           style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 2 ? AppColors.black : AppColors.impgrey,),
          //         ),
          //       ],
          //     ),
          //     onTap: () {
          //       setState(() {
          //         selectedTile = 2;
          //       });
          //       Get.toNamed(AppRoutes.earning);
          //       // Add functionality here
          //
          //     },
          //   ).paddingOnly(left: Get.width*0.05),
          // ),
          // Container(
          //   color: selectedTile == 3 ? AppColors.yellow : Colors.transparent,height: 55,width: Get.width,
          //   child: ListTile(
          //
          //     selectedColor: AppColors.yellow,
          //     title: Row(
          //       children: [
          //         Image.asset(ImagesPaths.document,
          //           scale: 4,
          //           color: selectedTile == 3 ? AppColors.black : AppColors.impgrey,),
          //         SizedBox(
          //           width: Get.width*0.05,
          //         ),
          //         Text("Documents",
          //           style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 3 ? AppColors.black : AppColors.impgrey,),
          //         ),
          //       ],
          //     ),
          //     onTap: () {
          //       setState(() {
          //         selectedTile = 3;
          //       });
          //       Get.toNamed(AppRoutes.document);
          //       // Add functionality here
          //
          //     },
          //   ).paddingOnly(left: Get.width*0.05),
          // ),
          // Container(
          //   color: selectedTile == 4 ? AppColors.yellow : Colors.transparent,height: 55,width: Get.width,
          //
          //   child: ListTile(
          //
          //     selectedColor: AppColors.yellow,
          //     title: Row(
          //       children: [
          //         Image.asset(ImagesPaths.men,
          //           scale: 4,
          //           color: selectedTile == 4 ? AppColors.black : AppColors.impgrey,),
          //         SizedBox(
          //           width: Get.width*0.05,
          //         ),
          //         Text("Profile",
          //           style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 4 ? AppColors.black : AppColors.impgrey,),
          //         ),
          //       ],
          //     ),
          //     onTap: () {
          //       setState(() {
          //         selectedTile = 4;
          //       });
          //       Get.toNamed(AppRoutes.profile);
          //       // Add functionality here
          //
          //     },
          //   ).paddingOnly(left: Get.width*0.05),
          // ),
          // Container(
          //   color: selectedTile == 5 ? AppColors.yellow : Colors.transparent,height: 55,width: Get.width,
          //
          //   child: ListTile(
          //
          //     selectedColor: AppColors.yellow,
          //     title: Row(
          //       children: [
          //         Image.asset(ImagesPaths.support,
          //           scale: 4,
          //           color: selectedTile == 5 ? AppColors.black : AppColors.impgrey,),
          //         SizedBox(
          //           width: Get.width*0.05,
          //         ),
          //         Text("Support",
          //           style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 5 ? AppColors.black : AppColors.impgrey,),
          //         ),
          //       ],
          //     ),
          //     onTap: () {
          //       setState(() {
          //         selectedTile = 5;
          //       });
          //       Get.toNamed(AppRoutes.support);
          //     },
          //   ).paddingOnly(left: Get.width*0.05),
          // ),
          // Container(
          //   color: selectedTile == 6 ? AppColors.yellow : Colors.transparent,height: 55,width: Get.width,
          //
          //   child: ListTile(
          //
          //     selectedColor: AppColors.yellow,
          //     title: Row(
          //       children: [
          //         Image.asset(ImagesPaths.term,
          //           scale: 4,
          //           color: selectedTile == 6 ? AppColors.black : AppColors.impgrey,),
          //         SizedBox(
          //           width: Get.width*0.05,
          //         ),
          //         Text("Terms & Conditions",
          //           style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 6 ? AppColors.black : AppColors.impgrey,),
          //         ),
          //       ],
          //     ),
          //     onTap: () {
          //       setState(() {
          //         selectedTile = 6;
          //       });
          //       Navigator.pushReplacement(
          //         context,
          //         PageRouteBuilder(
          //           pageBuilder: (context, animation1, animation2) => const HomeUi(),
          //           transitionDuration: const Duration(milliseconds: 600),
          //           transitionsBuilder: (context, animation, secondaryAnimation, child) {
          //             const begin = Offset(-1.0, 0.0);
          //             const end = Offset.zero;
          //             const curve = Curves.ease;
          //
          //             var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          //             var offsetAnimation = animation.drive(tween);
          //
          //             return SlideTransition(
          //               position: offsetAnimation,
          //               child: child,
          //             );
          //           },
          //         ),
          //       );
          //       // Add functionality here
          //
          //     },
          //   ).paddingOnly(left: Get.width*0.05),
          // ),
          // Container(
          //   color: selectedTile == 7 ? AppColors.yellow : Colors.transparent,height: 55,width: Get.width,
          //
          //   child: ListTile(
          //
          //     selectedColor: AppColors.yellow,
          //     title: Row(
          //       children: [
          //         Image.asset(ImagesPaths.privacy,
          //           scale: 4,
          //           color: selectedTile == 7 ? AppColors.black : AppColors.impgrey,),
          //         SizedBox(
          //           width: Get.width*0.05,
          //         ),
          //         Text("Privacy Policy",
          //           style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400,color: selectedTile == 7 ? AppColors.black : AppColors.impgrey,),
          //         ),
          //       ],
          //     ),
          //     onTap: () {
          //       setState(() {
          //         selectedTile = 7;
          //       });
          //       Navigator.pushReplacement(
          //         context,
          //         PageRouteBuilder(
          //           pageBuilder: (context, animation1, animation2) => const HomeUi(),
          //           transitionDuration: const Duration(milliseconds: 600),
          //           transitionsBuilder: (context, animation, secondaryAnimation, child) {
          //             const begin = Offset(-1.0, 0.0);
          //             const end = Offset.zero;
          //             const curve = Curves.ease;
          //
          //             var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          //             var offsetAnimation = animation.drive(tween);
          //
          //             return SlideTransition(
          //               position: offsetAnimation,
          //               child: child,
          //             );
          //           },
          //         ),
          //       );
          //       // Add functionality here
          //
          //     },
          //   ).paddingOnly(left: Get.width*0.05),
          // ),

          // Add more ListTiles for additional items
        ],
      ),
    );
  }
}
