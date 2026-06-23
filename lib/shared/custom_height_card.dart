import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/constants/app_color.dart';
import 'package:flutter_application_cubit/constants/custom_text.dart';
import 'package:flutter_application_cubit/cubits/bmi_cubits/bmi_cubits.dart'
    show BmiCubit;
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomHeightCard extends StatelessWidget {
  const CustomHeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Card(
        color: const Color.fromARGB(255, 199, 164, 177),
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomText(
                text: "Height (Cm)",
                wight: FontWeight.bold,
                color: const Color.fromARGB(255, 69, 67, 67),
                size: 20,
              ),

              Text(
                context.watch<BmiCubit>().height.toInt().toString(),
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: AppColor.seconedColor,
                ),
              ),

              Slider(
                value: context.watch<BmiCubit>().height,
                min: 100,
                max: 220,
                onChanged: (value) {
                  context.read<BmiCubit>().changeHeight(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
