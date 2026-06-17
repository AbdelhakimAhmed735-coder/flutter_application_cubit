import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/constants/app_color.dart';
import 'package:flutter_application_cubit/constants/custom_text.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.image,
    required this.text,
    required this.color,
  });

  final String image;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      height: 220,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            CustomText(
              text: text,
              wight: FontWeight.w400,
              color: AppColor.primaryColor,
              size: 50,
            ),
            const Spacer(),
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}
