import 'package:flutter/material.dart';
import 'package:toku_learning_app/constant.dart';
import 'package:toku_learning_app/models/phrases.dart';

class PhrasesItem extends StatelessWidget {
  final Phrases phrases;
  const PhrasesItem({super.key, required this.phrases});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.phrasescolor,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(phrases.jpname, style: AppStyle.appstyle2, softWrap: true),
                SizedBox(height: 4),
                Text(phrases.enname, style: AppStyle.appstyle3, softWrap: true),
              ],
            ),
          ),

          IconButton(
            icon: Icon(Icons.play_arrow, color: AppColors.appcolor6, size: 30),
            onPressed: () {
              phrases.playsound();
            },
          ),
        ],
      ),
    );
  }
}
