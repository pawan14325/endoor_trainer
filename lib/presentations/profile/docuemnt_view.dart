import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:flutter/material.dart';

class DocumentView extends StatelessWidget {
  const DocumentView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      appBar:myAppBar(title: Text("Documents"), context: context),
      child: Column(
          children: [],
        ),
      );
  }
}
