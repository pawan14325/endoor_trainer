import 'dart:io';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
class BottomNavBarView extends StatefulWidget {
  BottomNavBarView({super.key, this.currentTabIndex = 0});
  int? currentTabIndex;
  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  // HomeController homeController = Get.put(HomeController());
  // EarningController earningController = Get.put(EarningController());
  // BookingController bookingController = Get.put(BookingController());
  // ProfileController profileController = Get.put(ProfileController());
  // CountryCodeController countryCodeController = Get.put(CountryCodeController());

  late List<GlobalKey<NavigatorState>> navigatorKeys;
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    navigatorKeys = List<GlobalKey<NavigatorState>>.generate(4, (index) => GlobalKey<NavigatorState>());
    pages = [
      // _buildTabNavigator(0, const HomeUi()),
      // _buildTabNavigator(1, const EarningUi()),
      // _buildTabNavigator(2, const BookingUi(initialIndex: 0)),
      // _buildTabNavigator(3, const ProfileUI()),
      Container(color: Colors.red,height: AppSizes.screenHeight,width: AppSizes.screenWidth,),
      Container(color: Colors.yellow,height: AppSizes.screenHeight,width: AppSizes.screenWidth,),
      Container(color: Colors.green,height: AppSizes.screenHeight,width: AppSizes.screenWidth,),
      Container(color: Colors.blue,height: AppSizes.screenHeight,width: AppSizes.screenWidth,),
    ];
  }

  Widget _buildTabNavigator(int tabIndex, Widget child) {
    return Navigator(
      key: navigatorKeys[tabIndex],
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab = !await navigatorKeys[widget.currentTabIndex!].currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (widget.currentTabIndex != 0) {
            setState(() {
              widget.currentTabIndex = 0;
            });
            return false;
          }
        }
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0XFFFDF7B9),
                Color(0XFFFEE290),
                Color(0XFFD6BB7F),
                Color(0XFFD4B061),
                Color(0XFFFFD36B),
                Color(0XFFFFF1B1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: CurvedNavigationBar(
            index: widget.currentTabIndex ?? 0,
            height: Platform.isIOS ? 75 : 60,
            buttonBackgroundColor: Colors.transparent,
            animationCurve: Curves.fastEaseInToSlowEaseOut,
            backgroundColor: Colors.transparent,
            color: Colors.transparent,
            animationDuration: const Duration(milliseconds: 500),
            onTap: (index) {
              setState(() {
                widget.currentTabIndex = index;
              });
            },
            items: [
              _buildNavigationBarItem('Home', Assets.imagesIcHomeBottomNavBar, 5, 10),
              _buildNavigationBarItem('Earnings', Assets.imagesIcEarningBottomNavBar, 7, 10),
              _buildNavigationBarItem('History', Assets.imagesIcHistoryBottomNavBar, 5, 10),
              _buildNavigationBarItem('Account', Assets.imagesIcProfileBottomNavBar, 5, 10),
            ],
          ),
        ),
        body: Stack(
          children: pages
              .asMap()
              .map((index, page) => MapEntry(
            index,
            Offstage(
              offstage: widget.currentTabIndex != index,
              child: page,
            ),
          ))
              .values
              .toList(),
        ),
      ),
    );
  }

  CurvedNavigationBarItem _buildNavigationBarItem(String label, String assetPath, double scale, double fontSize) {
    return CurvedNavigationBarItem(
      label: label,
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
      ),
      child: _buildGradientButton(assetPath, scale),
    );
  }

  Widget _buildGradientButton(String assetPath, double scale) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0XFFFDF7B9),
            Color(0XFFFEE290),
            Color(0XFFD6BB7F),
            Color(0XFFD4B061),
            Color(0XFFFFD36B),
            Color(0XFFFFF1B1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          assetPath,
          scale: scale,
        ),
      ),
    );
  }
}

