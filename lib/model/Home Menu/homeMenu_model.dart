import 'package:fish/core/constant/images.dart';
import 'package:fish/presentation/screen/Feed%20store/feedStore.dart';
import 'package:fish/presentation/screen/Formulation/formulation.dart';
import 'package:fish/presentation/screen/settings%20screen/settings.dart';
import 'package:fish/presentation/screen/solution%20list/solution.dart';
import 'package:flutter/material.dart';

class MenuModel {
  final String title;
  final String iconPath;

  MenuModel({required this.title, required this.iconPath});

  void navigatePage(BuildContext context, int index) {
    if (index == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const FormulationScreen()));
    } else if (index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedStoreScreen()));
    } else if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SolutionScreen()));
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
    }
  }
}

final List<MenuModel> menuItems = [
  MenuModel(title: 'Formulation', iconPath: AppImages.formulation),
  MenuModel(title: 'Feed store', iconPath: AppImages.feedStore),
  MenuModel(title: 'Solution list', iconPath: AppImages.solution),
  MenuModel(title: 'Settings', iconPath: AppImages.settings),
];
