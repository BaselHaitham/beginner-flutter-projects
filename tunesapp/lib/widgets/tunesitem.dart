import 'package:flutter/material.dart';
import 'package:tunesapp/model/tunemodel.dart';

class TuneItem extends StatelessWidget {
  final TuneModel item;
  const TuneItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: InkWell(
        onTap: item.playsound,
        child: Container(color: item.color, height: size.height * 0.1),
      ),
    );
  }
}
