import 'package:basketball_counter_app/core/app_style.dart';
import 'package:basketball_counter_app/widgets/team_column/team_column.dart';
import 'package:flutter/material.dart';

class BasketballCounterApp extends StatefulWidget {
  BasketballCounterApp({super.key});

  @override
  State<BasketballCounterApp> createState() => _BasketballCounterAppState();
}

class _BasketballCounterAppState extends State<BasketballCounterApp> {
  double points = 0;
  @override
  Widget build(BuildContext context) {
    double screenh = MediaQuery.of(context).size.height;
    // double screenw = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff49807),
          title: Text('Points Counter'),
        ),
        body: Column(
          children: [
            Container(),
            Row(
              children: [
                Expanded(
                  child: TeamColumn(
                    points: points,
                    teamName: Text(
                      'Team A',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenh * 0.7,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                    indent: screenh * 0.07,
                    endIndent: screenh * 0.07,
                  ),
                ),
                Expanded(
                  child: TeamColumn(
                    points: points,
                    teamName: Text(
                      'Team B',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xfff49807),
              ),
              onPressed: () {
                points = 0;
                setState(() {});
              },
              child: AppStyle(text: '  Reset  ', fontSizee: 20),
            ),
          ],
        ),
      ),
    );
  }
}
