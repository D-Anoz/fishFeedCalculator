import 'package:fish/core/constant/colors.dart';
import 'package:fish/core/constant/fonts.dart';
import 'package:flutter/material.dart';

import '../../../model/Home Menu/homeMenu_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Feed calculator',
          style: TextStyle(color: AppColors.whiteColor),
        ),
        automaticallyImplyLeading: false, //removes the leading back button
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 16.0, mainAxisSpacing: 16.0),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final menuItem = menuItems[index];
          return Card(
            color: AppColors.cardColorLgt,
            child: InkWell(
              onTap: () {
                menuItem.navigatePage(context, index);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(menuItem.iconPath, height: 90, width: 90),
                  const SizedBox(height: 16),
                  Text(
                    menuItem.title,
                    style: const TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
