
import 'package:flutter/material.dart';

import 'core/app_sizes.dart';
import 'core/app_theme.dart';
import 'core/routes/routes.dart';
import 'core/routes/routes_names.dart';

void main() {
  runApp(const EndoorphinTrainer());
}

class EndoorphinTrainer extends StatelessWidget {
  const EndoorphinTrainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Endoorphin Trainer',
      themeMode: ThemeMode.dark,
      theme: AppThemes.appTheme,
      initialRoute: RoutesName.splash,
      // Initial route
      onGenerateRoute: Routes.generateRoute,
      builder: (context, child) {
        AppSizes.init(context);
        return child!;
      },
    );
  }
}
