import 'package:fish/core/constant/colors.dart';
import 'package:flutter/material.dart';

import 'presentation/screen/Splash Screen/splash.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(backgroundColor: AppColors.primaryColor, iconTheme: IconThemeData(color: AppColors.whiteColor))),
      home: const SplashScreen(),
    ),
  );
}
