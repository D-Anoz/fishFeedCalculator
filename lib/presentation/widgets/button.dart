import 'package:fish/core/constant/colors.dart';
import 'package:fish/core/constant/fonts.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnName;
  final VoidCallback? fun;
  const Button({required this.btnName, this.fun, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.prmBtnColor, borderRadius: BorderRadius.all(Radius.circular(8))),
      child: ElevatedButton(
        onPressed: fun,
        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(AppColors.prmBtnColor)),
        child: Text(
          btnName,
          style: const TextStyle(fontSize: AppFonts.body, color: AppColors.whiteColor, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
