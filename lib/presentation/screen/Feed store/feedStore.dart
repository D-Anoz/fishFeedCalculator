import 'package:flutter/material.dart';
import 'package:auto_size_text_field/auto_size_text_field.dart';
import '../../../core/constant/colors.dart';

class FeedStoreScreen extends StatefulWidget {
  const FeedStoreScreen({super.key});

  @override
  State<FeedStoreScreen> createState() => _FeedStoreScreenState();
}

class _FeedStoreScreenState extends State<FeedStoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Feed store', style: TextStyle(color: AppColors.whiteColor)),
        ),
        body: Column(
          children: [
            Container(child: const Text('This is a normal text.')),
            Container(child: const Text('This is an AutoSizeText.'))
          ],
        ));
  }
}
