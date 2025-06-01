import 'package:basketball_counter_app/core/app_style.dart';
import 'package:flutter/material.dart';

class TeamColumn extends StatefulWidget {
  final Text teamName;
  double points;

  TeamColumn({super.key, required this.teamName, required this.points});

  @override
  State<TeamColumn> createState() => _TeamColumnState();
}

class _TeamColumnState extends State<TeamColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widget.teamName,
        AppStyle(text: widget.points.toString(), fontSizee: 100),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xfff49807)),
            onPressed: () {
              widget.points++;
              setState(() {});
            },
            child: AppStyle(text: ' Add 1 Point ', fontSizee: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xfff49807)),
            onPressed: () {
              widget.points += 2;
              setState(() {});
            },
            child: AppStyle(text: 'Add 2 Points', fontSizee: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xfff49807)),
            onPressed: () {
              widget.points += 3;
              setState(() {});
            },
            child: AppStyle(text: 'Add 3 Points', fontSizee: 20),
          ),
        ),
      ],
    );
  }
}
