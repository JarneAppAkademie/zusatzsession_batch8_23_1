import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  const CustomContainer({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(width: 50, height: 50, color: color);
  }
}
