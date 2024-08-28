import 'package:fish/core/constant/colors.dart';
import 'package:fish/core/constant/fonts.dart';
import 'package:fish/presentation/widgets/button.dart';
import 'package:fish/presentation/widgets/cards.dart';
import 'package:flutter/material.dart';

import '../../../model/ration/ration_model.dart';

class RationScreen extends StatefulWidget {
  const RationScreen({super.key});

  @override
  State<RationScreen> createState() => _RationScreenState();
}

class _RationScreenState extends State<RationScreen> {
  final Set<int> selectedCards = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Select ration',
          style: TextStyle(color: AppColors.whiteColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(color: Color(0xffFFDFCE), borderRadius: BorderRadius.all(Radius.circular(8))),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.info,
                      color: AppColors.formIconColor,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Please select some ration to make feed recipe.',
                        style: TextStyle(fontSize: AppFonts.body),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Fodder tree',
              style: TextStyle(fontSize: AppFonts.title, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: rationItems.length,
                itemBuilder: (context, index) {
                  final menuItem = rationItems[index];
                  final isSelected = selectedCards.contains(index);
                  bool isSel = false;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedCards.remove(index);
                          isSel = false;
                        } else {
                          selectedCards.add(index);
                          isSel = true;
                        }
                      });
                      debugPrint(selectedCards.toString());
                    },
                    child: Cards(
                      color: isSelected ? AppColors.rationCardSelectedColor : AppColors.rationCardUnselColor,
                      title: menuItem.title,
                      imgPath: menuItem.iconPath,
                      isSelected: isSel,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                width: double.infinity,
                height: selectedCards.isEmpty ? 130 : 55,
                child: selectedCards.isEmpty
                    ? Column(
                        children: [
                          const Expanded(
                            child: SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.info,
                                      color: AppColors.formIconColor,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      child: Text(
                                        'The ration selected is insufficient. Please select some more ration to make feed recipe.',
                                        style: TextStyle(fontSize: AppFonts.body),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Button(
                            btnName: 'View result',
                            fun: () => debugPrint('hehhe'),
                          )
                        ],
                      )
                    : Button(
                        btnName: 'View result',
                        fun: () => debugPrint('hehhe'),
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
