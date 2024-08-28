import 'package:fish/core/constant/colors.dart';
import 'package:fish/core/constant/fonts.dart';
import 'package:flutter/material.dart';

class OrangeBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback? fun;
  const OrangeBtn({required this.btnName, this.fun, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.secBtnColor, borderRadius: BorderRadius.all(Radius.circular(8))),
      child: ElevatedButton(
        onPressed: fun,
        style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(AppColors.secBtnColor), elevation: WidgetStatePropertyAll(0)),
        child: Text(
          btnName,
          style: const TextStyle(fontSize: AppFonts.body, fontWeight: FontWeight.normal, color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
