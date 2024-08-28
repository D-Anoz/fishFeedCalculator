import 'package:fish/core/constant/colors.dart';
import 'package:fish/core/constant/fonts.dart';
import 'package:fish/core/constant/formControllers.dart';
import 'package:fish/presentation/screen/ration/ration.dart';
import 'package:fish/presentation/widgets/formField.dart';
import 'package:flutter/material.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart' as picker;

import '../../widgets/button.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  late final Formcontroller formcontroller;

  @override
  void initState() {
    super.initState();
    formcontroller = Formcontroller();
  }

  @override
  void dispose() {
    formcontroller.dispose();
    super.dispose();
  }

  String selectedDate = 'Pick a date';
  String showTime = 'Pick a time';
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Input form',
          style: TextStyle(color: AppColors.whiteColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Label(label: 'Farmer\'s name'),
              Field(controller: formcontroller.farmer),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Label(label: 'Date'),
                        FieldWIcon(
                          controller: formcontroller.date,
                          sufIcon: Icons.calendar_today_rounded,
                          fun: show,
                          label: selectedDate,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Label(label: 'Time'),
                        FieldWIcon(
                          label: showTime,
                          controller: formcontroller.time,
                          sufIcon: Icons.access_time_filled_outlined,
                          fun: () => selectTheTime(context),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Text('Animal Information', style: TextStyle(fontSize: AppFonts.title, fontWeight: FontWeight.bold)),
              const Label(label: 'Fish species'),
              FieldWIcon(controller: formcontroller.species, sufIcon: Icons.keyboard_arrow_down_sharp),
              const Label(label: 'Feed type'),
              FieldWIcon(controller: formcontroller.feedType, sufIcon: Icons.keyboard_arrow_down_sharp),
              const Label(label: 'Average weight'),
              FieldWIcon(controller: formcontroller.avgWt, sufIcon: Icons.keyboard_arrow_down_sharp),
              const Label(label: 'C. Protien(%)'),
              Field(controller: formcontroller.protein),
              const Label(label: 'Lipid(%)'),
              Field(controller: formcontroller.lipid),
              const Label(label: 'GE(%)'),
              Field(controller: formcontroller.ge),
              const Label(label: 'Carb(%)'),
              Field(controller: formcontroller.carb),
              const Label(label: 'Ash(%)'),
              Field(controller: formcontroller.ash),
              const Label(label: 'Fiber(%)'),
              Field(controller: formcontroller.fiber),
              const Label(label: 'Mix quantity(KG)'),
              Field(controller: formcontroller.mixQty),
              const SizedBox(
                height: 40,
              ),
              Button(
                btnName: 'Save',
                fun: () {
                  debugPrint('aihfd');
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RationScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  show() async {
    picker.NepaliDateTime? selectedDateTime = await picker.showMaterialDatePicker(
      context: context,
      initialDate: NepaliDateTime.now(),
      firstDate: NepaliDateTime(2000),
      lastDate: NepaliDateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
    );

    if (selectedDateTime != null) {
      // Extract and print only the date part
      setState(() {
        selectedDate = '${selectedDateTime.year}-${selectedDateTime.month.toString().padLeft(2, '0')}-${selectedDateTime.day.toString().padLeft(2, '0')}';
      });
      debugPrint('Selected Date: $selectedDate');
    } else {
      debugPrint('No date selected');
    }
  }

  Future<void> selectTheTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          );
        });

    if (pickedTime != null) {
      final formattedTime = TimeOfDay(hour: pickedTime.hour, minute: pickedTime.minute).format(context);

      setState(() {
        // showTime = pickedTime.toString();
        showTime = formattedTime;
        debugPrint(showTime);
      });
    }
  }
}
