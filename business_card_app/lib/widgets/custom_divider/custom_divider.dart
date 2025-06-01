import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double indent;
  final double endIndent;
  const CustomDivider({super.key, required this.indent, required this.endIndent});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.white,
      thickness: 1.5,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
