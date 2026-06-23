import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/constants/app_color.dart';
import 'package:flutter_application_cubit/constants/custom_text.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.text,
    required this.color,
    required this.value,
    required this.onAdd,
    required this.onRemove,
  });

  final String text;
  final Color color;
  final int value;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184,
      height: 200,
      child: Card(
        color: color,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            CustomText(
              text: text,
              wight: FontWeight.bold,
              color: AppColor.seconedColor,
              size: 20,
            ),
            Text(
              value.toString(),
              style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    heroTag: "${text}_plus",
                    mini: true,
                    onPressed: onAdd,
                    child: const Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    heroTag: "${text}_minus",
                    mini: true,
                    onPressed: onRemove,
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
