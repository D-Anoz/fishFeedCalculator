import 'package:flutter/material.dart';

class SettingsModel {
  final String title;
  final IconData? icon;

  SettingsModel({required this.title, this.icon});
}

final List<SettingsModel> settingItems = [
  SettingsModel(title: 'Change language', icon: Icons.keyboard_arrow_down_rounded),
  SettingsModel(
    title: 'About',
  ),
];
