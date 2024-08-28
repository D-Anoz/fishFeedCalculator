import 'package:fish/core/constant/images.dart';
import 'package:fish/presentation/screen/Input%20form/form.dart';
import 'package:flutter/material.dart';

class FormulationModel {
  final String title;
  final String iconPath;
  FormulationModel({required this.title, required this.iconPath});

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

final List<FormulationModel> formulationItems = [
  FormulationModel(title: 'Carp', iconPath: AppImages.carp),
  FormulationModel(title: 'Tilapia', iconPath: AppImages.tilapia),
  FormulationModel(title: 'Catfish', iconPath: AppImages.catfish),
  FormulationModel(title: 'Koi', iconPath: AppImages.koi),
  FormulationModel(title: 'Pangas', iconPath: AppImages.pangas),
  FormulationModel(title: 'Freshwater prawn', iconPath: AppImages.prawn),
  FormulationModel(title: 'Marine shrimp', iconPath: AppImages.shrimp),
];
