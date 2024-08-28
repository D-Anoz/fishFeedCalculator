import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/fonts.dart';
import '../../../model/Formulation/formulation.dart';

class FormulationScreen extends StatefulWidget {
  const FormulationScreen({super.key});

  @override
  State<FormulationScreen> createState() => _FormulationScreenState();
}

class _FormulationScreenState extends State<FormulationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Formulation', style: TextStyle(color: AppColors.whiteColor)),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 16.0, mainAxisSpacing: 16.0),
        itemCount: formulationItems.length,
        itemBuilder: (context, index) {
          final menuItem = formulationItems[index];
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
