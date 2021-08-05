import 'package:coding_task/constants/colors.dart';
import 'package:coding_task/widgets/pregnancy_masterclass.dart';
import 'package:coding_task/widgets/yoga_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: BrandColors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              YogaCard(),
              SizedBox(height: 16),
              PregnancyMasterclassCard(),
            ],
          ),
        ),
      ),
    );
  }
}
