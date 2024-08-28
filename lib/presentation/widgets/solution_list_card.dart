import 'package:flutter/material.dart';

// import '../../core/constant/colors.dart';
import '../../core/constant/fonts.dart';

class SolnListCard extends StatelessWidget {
  final String value;
  final String desc;
  final Color color;
  const SolnListCard({required this.value, required this.desc, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: color, borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                value,
                style: const TextStyle(fontSize: AppFonts.splashHeading, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 120,
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
