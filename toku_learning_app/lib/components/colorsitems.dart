import 'package:flutter/material.dart';
import 'package:toku_learning_app/constant.dart';
import 'package:toku_learning_app/models/colors.dart';

class ColorsItem extends StatelessWidget {
  final Colorss colors;
  const ColorsItem({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.colorscolor,
      child: Row(
        children: [
          Container(
            color: AppColors.appcolor4,
            child: Image.asset(colors.image),
          ),
          SizedBox(width: size.width * 0.06),
          Column(
            children: [
              Text(colors.jpname, style: AppStyle.appstyle2),
              Text(colors.enname, style: AppStyle.appstyle3),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.play_arrow, color: AppColors.appcolor6, size: 30),
            onPressed: () {
              colors.playsound();
            },
          ),
        ],
      ),
    );
  }
}
