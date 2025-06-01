import 'package:flutter/material.dart';
import 'package:tunesapp/core/utils/appcolors.dart';

abstract class AppStyles {
  static TextStyle splashStyle(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final responsiveFontSize = screenWidth * 0.07;
    final width = MediaQuery.of(context).size.width;

    return TextStyle(
      fontSize: responsiveFontSize,
      fontWeight: FontWeight.bold,
      color: Appcolors.primarycolor,
      shadows: [Shadow(color: Colors.white, blurRadius: width * 0.09)],
    );
  }
}
