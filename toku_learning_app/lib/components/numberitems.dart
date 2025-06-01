import 'package:flutter/material.dart';
import 'package:toku_learning_app/constant.dart';
import 'package:toku_learning_app/models/number.dart';

class NumberItems extends StatelessWidget { 
  final Number number;
  const NumberItems({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.numbercolor,
      child: Row(
        children: [
          Container(
            color: AppColors.appcolor4,
            child: Image.asset(number.image),
          ),
          SizedBox(width: size.width * 0.06),
          Column(
            children: [
              Text(number.jpname, style: AppStyle.appstyle2),
              Text(number.enname, style: AppStyle.appstyle3),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.play_arrow, color: AppColors.appcolor6, size: 30),
            onPressed: () {
              number.playsound();
            },
          ),
        ],
      ),
    );
  }
}
