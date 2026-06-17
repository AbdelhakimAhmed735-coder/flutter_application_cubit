import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.wight,
    required this.color,
    required this.size,
  });
  final String text;
  final FontWeight wight;
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: wight),
    );
  }
}
