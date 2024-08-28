import 'package:fish/core/constant/colors.dart';
import 'package:fish/core/constant/images.dart';
import 'package:flutter/material.dart';

import '../../core/constant/fonts.dart';

class Cards extends StatelessWidget {
  final String title;
  final String imgPath;
  final Color color;
  final bool isSelected;
  const Cards({required this.title, required this.imgPath, required this.color, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Card(
        color: color,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: const BorderSide(color: AppColors.cardBorderColor, width: 1)),
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12, left: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: const Color.fromARGB(255, 214, 214, 214),
                    child: Image.asset(
                      imgPath,
                      height: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    title,
                    style: const TextStyle(fontSize: AppFonts.body),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  debugPrint('Item details');
                  itemInfo(context);
                },
                icon: const Icon(
                  Icons.info,
                  color: AppColors.formIconColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void itemInfo(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: Image.asset(AppImages.rationImg),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: AppFonts.title, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text('Wheat is a grass widely cultivated for its seed, a cereal grain that is a staple food around the world. The many species of wheat together make up the genus.', style: TextStyle(fontSize: AppFonts.body)),
                    const SizedBox(
                      height: 8,
                    ),
                    const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('DM: 37.02', style: TextStyle(fontSize: AppFonts.body)),
                            Text('ME(MJ): 7.41', style: TextStyle(fontSize: AppFonts.body)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('DCP: 0.1 ', style: TextStyle(fontSize: AppFonts.body)),
                            Text('NDF: 50.84', style: TextStyle(fontSize: AppFonts.body)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Ca: 17.2', style: TextStyle(fontSize: AppFonts.body)),
                            Text('P(g): 3.5', style: TextStyle(fontSize: AppFonts.body)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Go back'))
              ],
            ));
  }
}
