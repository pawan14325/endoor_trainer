import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import '../app_sizes.dart';

class AppBackground extends StatelessWidget {
  Widget child;
    AppBackground({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: AppSizes.screenHeight,
      width: AppSizes.screenWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image:AssetImage(Assets.imagesBackground)
        )
      ),
      child: child,
    );
  }
}
