import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import '../app_sizes.dart';

class AppBackground extends StatelessWidget {
  Widget child;
  PreferredSizeWidget? appBar;
  Widget? drawer;
    AppBackground({super.key,required this.child,this.appBar,this.drawer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar,
      drawer: drawer,
      body: Container(
       height: AppSizes.screenHeight,
        width: AppSizes.screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:AssetImage(Assets.imagesBackground)
          )
        ),
        child: child,
      ),
    );
  }
}
