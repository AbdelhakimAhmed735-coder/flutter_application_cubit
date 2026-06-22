import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/constants/app_color.dart';
import 'package:flutter_application_cubit/constants/custom_text.dart';
import 'package:flutter_application_cubit/cubits/bmi_cubits/bmi_cubits.dart';
import 'package:flutter_application_cubit/cubits/bmi_cubits/bmi_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184,
      height: 200,
      child: Card(
        color: color,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            CustomText(
              text: text,
              wight: FontWeight.bold,
              color: color,
              size: 20,
            ),
            BlocBuilder<BmiCubit, BmiState>(
              builder: (context, state) {
                return Text(
                  context.read<BmiCubit>().weight.toString(),
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: AppColor.seconedColor,
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    heroTag: "${text}_plus",
                    mini: true,
                    backgroundColor: Colors.white,
                    onPressed: () {
                      context.read<BmiCubit>().increaseWeight();
                    },
                    child: Icon(
                      Icons.add,
                      size: 35,
                      color: AppColor.seconedColor,
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: "${text}minus",
                    mini: true,
                    backgroundColor: Colors.white,
                    onPressed: () {
                      context.read<BmiCubit>().decreaseAge();
                    },
                    child: Icon(
                      Icons.remove,
                      size: 35,
                      color: AppColor.seconedColor,
                    ),
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
