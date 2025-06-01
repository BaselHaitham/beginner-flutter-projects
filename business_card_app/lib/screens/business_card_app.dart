import 'package:business_card_app/widgets/Info_Text/info_text.dart';
import 'package:business_card_app/widgets/custom_card_widget/custom_card_widget.dart';
import 'package:business_card_app/widgets/custom_divider/custom_divider.dart';

import 'package:flutter/material.dart';

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 58, 79, 97),
      body: SizedBox(
        width: screenwidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2.0),
              ),
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 186, 167, 191),
                radius: 100,
                backgroundImage: AssetImage('assets/devIocon.png'),
              ),
            ),
            SizedBox(height: screenheight * 0.05),
            InfoText(devname: 'Basel Hitham', branch: 'Flutter Developer'),
            CustomDivider(
              indent: screenwidth * 0.1,
              endIndent: screenwidth * 0.1,
            ),
            SizedBox(height: screenheight * 0.03),
            CustomeCard(
              icon: Icon(Icons.phone, size: 25),
              text: Text(
                '+20 010 1234 5678',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              arrow: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: screenheight * 0.03),
            CustomeCard(
              arrow: Icon(Icons.arrow_forward_ios),
              icon: Icon(Icons.email, size: 25),
              text: Text(
                'Basel@example.com',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
