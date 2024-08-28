import 'package:fish/core/constant/colors.dart';
import 'package:flutter/material.dart';

import '../../core/constant/fonts.dart';

class Field extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? fun;
  const Field({required this.controller, this.fun, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 16),
      child: TextFormField(
        controller: controller,
        onTap: () {
          // fun;
        },
        decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1, color: AppColors.primaryColor)),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColors.borderColor),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}

//formField with icons in it

class FieldWIcon extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? fun;
  final IconData sufIcon;
  final String? label;

  const FieldWIcon({required this.controller, this.fun, required this.sufIcon, this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 16),
      child: TextFormField(
        controller: controller,
        onTap: () {},
        decoration: InputDecoration(
            label: Text(label ?? ''),
            focusedBorder: const OutlineInputBorder(borderSide: BorderSide(width: 1, color: AppColors.primaryColor)),
            border: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: AppColors.borderColor),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            suffixIcon: IconButton(
              onPressed: fun,
              icon: Icon(
                sufIcon,
                color: AppColors.formIconColor,
              ),
            )),
      ),
    );
  }
}

//form label class
class Label extends StatelessWidget {
  final String label;
  const Label({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(fontSize: AppFonts.body),
    );
  }
}
