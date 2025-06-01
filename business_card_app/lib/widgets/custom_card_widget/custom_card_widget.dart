import 'package:flutter/material.dart';

class CustomeCard extends StatelessWidget {
  final Icon? icon;
  final Text? text;
  final Icon? arrow;
   CustomeCard({
    super.key,
    required this.icon,
    required this.text,
    this.arrow,
  });

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),

      padding: EdgeInsets.only(
        left: screenwidth * 0.05,
        right: screenwidth * 0.05,
        top: screenheight * 0.010,
        bottom: screenheight * 0.010,
      ),
      width: screenwidth * 0.8,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon!,
          SizedBox(width: screenwidth * 0.05),
          text!,
          Spacer(),
          arrow!,
        ],
      ),
    );
  }
}
