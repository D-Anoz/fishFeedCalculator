import 'package:flutter/material.dart';

class Formcontroller {
  final TextEditingController farmer = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController time = TextEditingController();
  final TextEditingController species = TextEditingController();
  final TextEditingController feedType = TextEditingController();
  final TextEditingController avgWt = TextEditingController();
  final TextEditingController protein = TextEditingController();
  final TextEditingController lipid = TextEditingController();
  final TextEditingController ge = TextEditingController();
  final TextEditingController carb = TextEditingController();
  final TextEditingController ash = TextEditingController();
  final TextEditingController fiber = TextEditingController();
  final TextEditingController mixQty = TextEditingController();

  void dispose() {
    farmer.dispose();
    date.dispose();
    time.dispose();
    species.dispose();
    feedType.dispose();
    avgWt.dispose();
    protein.dispose();
    lipid.dispose();
    ge.dispose();
    carb.dispose();
    ash.dispose();
    fiber.dispose();
    mixQty.dispose();
  }
}
