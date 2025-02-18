import 'dart:io';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/generated/assets.dart';
import 'package:endo_trainer/presentations/booking/booking_history_view.dart';
import 'package:endo_trainer/presentations/earning/earning_view.dart';
import 'package:endo_trainer/presentations/home/home_view.dart';
import 'package:endo_trainer/presentations/profile/profile_view.dart';
import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeView(),
    EarningView(),
    BookingHistoryView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          index: _currentIndex,
          height: Platform.isIOS ? 75 : 60,
          buttonBackgroundColor: Colors.transparent,
          animationCurve: Curves.fastEaseInToSlowEaseOut,
          backgroundColor: Colors.transparent,
          color: Colors.transparent,
          animationDuration: const Duration(milliseconds: 500),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
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
      body: _pages[_currentIndex],
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
