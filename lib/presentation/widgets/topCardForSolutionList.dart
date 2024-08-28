import 'package:flutter/material.dart';

import '../../core/constant/fonts.dart';

class SolutionListTopCard extends StatelessWidget {
  final String label;
  final String info;
  const SolutionListTopCard({required this.label, required this.info, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.w500),
        ),
        Text(info, style: const TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.w500))
      ],
    );
  }
}
