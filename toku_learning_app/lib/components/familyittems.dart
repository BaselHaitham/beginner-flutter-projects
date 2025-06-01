import 'package:flutter/material.dart';
import 'package:toku_learning_app/constant.dart';
import 'package:toku_learning_app/models/family.dart';

class FamilyIttems extends StatelessWidget {
  final Family family;
  const FamilyIttems({super.key, required this.family});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.familycolor,
      child: Row(
        children: [
          Container(
            color: AppColors.appcolor4,
            child: Image.asset(family.image),
          ),
          SizedBox(width: size.width * 0.06),
          Column(
            children: [
              Text(family.jpname, style: AppStyle.appstyle2),
              Text(family.enname, style: AppStyle.appstyle3),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.play_arrow, color: AppColors.appcolor6, size: 30),
            onPressed: () {
              family.playsound();
            },
          ),
        ],
      ),
    );
  }
}
