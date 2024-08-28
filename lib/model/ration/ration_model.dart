import 'package:fish/core/constant/images.dart';
import 'package:fish/presentation/screen/Input%20form/form.dart';
import 'package:flutter/material.dart';

class RationModel {
  final String title;
  final String iconPath;
  RationModel({required this.title, required this.iconPath});

  void navigatePage(BuildContext context, int index) {
    if (index == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const InputForm()));
    } else if (index == 1) {
      debugPrint('Tilapia coming right away..');
    } else if (index == 2) {
      debugPrint('Catfish coming right away..');
    } else if (index == 3) {
      debugPrint('Koi coming right away..');
    } else if (index == 4) {
      debugPrint('Pangas coming right away..');
    } else if (index == 5) {
      debugPrint('Freshwater prawn coming right away..');
    } else {
      debugPrint('Marine shrimp coming right away..');
    }
  }
}

final List<RationModel> rationItems = [
  RationModel(title: 'Wheat', iconPath: AppImages.carp),
  RationModel(title: 'Wheat barn', iconPath: AppImages.tilapia),
  RationModel(title: 'Maize', iconPath: AppImages.catfish),
  RationModel(title: 'Rice polish', iconPath: AppImages.koi),
  RationModel(title: 'Mustard oil cake', iconPath: AppImages.pangas),
  RationModel(title: 'Sasame oil cake', iconPath: AppImages.prawn),
  RationModel(title: 'Shark oil', iconPath: AppImages.shrimp),
];
