import 'package:fish/core/constant/colors.dart';
import 'package:fish/core/constant/fonts.dart';
import 'package:fish/core/constant/images.dart';
import 'package:flutter/material.dart';

import '../Home Screen/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  AppImages.splashScreenImg,
                  height: 300,
                  width: 300,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Fish feed calculator',
                  style: TextStyle(fontSize: AppFonts.splashHeading, fontWeight: FontWeight.bold, color: AppColors.whiteColor),
                ),
                const SizedBox(
                  width: 200,
                  child: Text(
                    'Calculate the perfect amount of food for your aquatic friends.',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.w500, color: AppColors.whiteColor),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          height: 165,
          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)), color: AppColors.whiteColor),
          child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12, left: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppImages.usadLogo,
                      // height: 80,
                      width: 80,
                    ),
                    Image.asset(
                      AppImages.lutheranLogo,
                      // height: 220,
                      width: 220,
                    )
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Image.asset(
                  AppImages.gkLogo,
                  width: 300,
                  // height: 300,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
