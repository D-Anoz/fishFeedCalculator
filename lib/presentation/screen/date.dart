import 'package:fish/core/constant/colors.dart';
import 'package:fish/core/constant/fonts.dart';
import 'package:fish/core/constant/images.dart';
import 'package:flutter/material.dart';

class TestCardIcon extends StatefulWidget {
  const TestCardIcon({super.key});

  @override
  State<TestCardIcon> createState() => _TestCardIconState();
}

class _TestCardIconState extends State<TestCardIcon> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Image.asset(
                      AppImages.shrimp,
                      height: 55,
                    ),
                  ),
                  const Text(
                    'Wheat',
                    style: TextStyle(fontSize: AppFonts.title, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        debugPrint('Can\'t edit right now.');
                      },
                      child: const Text(
                        'Edit',
                        style: TextStyle(color: Colors.green, fontSize: AppFonts.body),
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '37.02',
                        style: TextStyle(color: AppColors.cardFontColor, fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'C.Protien',
                        style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '9',
                        style: TextStyle(color: AppColors.cardFontColor, fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Lipid',
                        style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1.1',
                        style: TextStyle(color: AppColors.cardFontColor, fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'GE',
                        style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '50.84',
                        style: TextStyle(color: AppColors.cardFontColor, fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Carb',
                        style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '17.8',
                        style: TextStyle(color: AppColors.cardFontColor, fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Ash',
                        style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '3.5',
                        style: TextStyle(color: AppColors.cardFontColor, fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Fiber',
                        style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1.0',
                        style: TextStyle(color: AppColors.cardFontColor, fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Concentrate',
                        style: TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
