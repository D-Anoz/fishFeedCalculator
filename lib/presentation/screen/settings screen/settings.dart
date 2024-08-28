import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/fonts.dart';
import '../../../model/settings model/settings_model.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings', style: TextStyle(color: AppColors.whiteColor)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: settingItems.length,
        itemBuilder: (context, index) {
          final setting = settingItems[index];
          return Column(
            children: [
              Card(
                color: AppColors.cardColorLgt,
                child: InkWell(
                  onTap: () {
                    if (index == 0) {
                      debugPrint('You can\'t change the language right now.');
                    } else {
                      debugPrint('About page is under construction.');
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          setting.title,
                          style: const TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.bold),
                        ),
                        Icon(setting.icon, size: 40),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              )
            ],
          );
        },
      ),
    );
  }
}
