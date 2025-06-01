import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String devname;
  final String branch;
  const InfoText({super.key, required this.devname, required this.branch});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenwidth,
      child: Column(
        children: [
          Text(
            devname,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Pacifico',
              color: Colors.white,
            ),
          ),
          Text(
            branch,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'BigShoulder',
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
