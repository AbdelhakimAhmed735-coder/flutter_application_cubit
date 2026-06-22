import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/constants/app_color.dart';
import 'package:flutter_application_cubit/constants/custom_text.dart';
import 'package:flutter_application_cubit/cubits/bmi_cubits/bmi_cubits.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomHeightCard extends StatefulWidget {
  const CustomHeightCard({super.key});

  @override
  State<CustomHeightCard> createState() => _CustomHeightCardState();
}

class _CustomHeightCardState extends State<CustomHeightCard> {
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),

      width: double.infinity,
      height: 200,
      child: Card(
        color: const Color.fromARGB(255, 199, 164, 177),
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomText(
                text: "height(Cm)",
                wight: FontWeight.bold,
                color: const Color.fromARGB(255, 69, 67, 67),
                size: 20,
              ),
              Text(
                context.read<BmiCubit>().height.toInt().toString(),
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: AppColor.seconedColor,
                ),
              ),
              Slider(
                value: height,
                min: 100,
                max: 220,
                onChanged: (value) {
                  context.read<BmiCubit>().height;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
