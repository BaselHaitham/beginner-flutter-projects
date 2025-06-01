import 'package:birthdaycardapp/core/happybirthday_textstyle.dart';
import 'package:flutter/material.dart';

class BirthdayCardApp extends StatelessWidget {
  const BirthdayCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 197, 176, 201),
        body: SizedBox(
          width: width,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.08,
              ),
              Image.asset(
                'assets/ballons.png',
                width: 350,
                height: 350,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const HappybirthdayTextstyle(
                text: 'HAPPY\nBIRTHDAY',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
