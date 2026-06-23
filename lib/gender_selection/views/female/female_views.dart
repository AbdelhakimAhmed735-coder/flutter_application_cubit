import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/constants/app_color.dart';
import 'package:flutter_application_cubit/constants/custom_text.dart';
import 'package:flutter_application_cubit/cubits/bmi_cubits/bmi_cubits.dart';
import 'package:flutter_application_cubit/shared/custom_card.dart';
import 'package:flutter_application_cubit/shared/custom_height_card.dart';
import 'package:flutter_application_cubit/gender_selection/views/result/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FemaleViews extends StatefulWidget {
  const FemaleViews({super.key});

  @override
  State<FemaleViews> createState() => _FemaleViewsState();
}

class _FemaleViewsState extends State<FemaleViews> {
  double height = 175;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BmiCubit>();
    print(cubit.weight);

    return Scaffold(
      backgroundColor: const Color(0xffFCE4EC), // خلفية وردي فاتح

      appBar: AppBar(
        backgroundColor: const Color(0xffF8BBD0), // لون البار
        title: const Text(
          "Female",
          style: TextStyle(
            color: Color(0xff880E4F),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "BMI",
                    wight: FontWeight.bold,
                    color: const Color(0xffAD1457),
                    size: 40,
                  ),

                  const SizedBox(width: 5),

                  CustomText(
                    text: "Calculator",
                    wight: FontWeight.bold,
                    color: const Color(0xffEC407A),
                    size: 40,
                  ),
                ],
              ),

              const SizedBox(height: 25),

              CustomText(
                text: "Please modify the values",
                wight: FontWeight.bold,
                color: const Color(0xff4A148C),
                size: 25,
              ),

              const SizedBox(height: 40),

              Row(
                children: [
                  CustomCard(
                    text: "Weight",
                    color: const Color(0xffFFF8FA),
                    value: context.watch<BmiCubit>().weight,

                    onAdd: () {
                      context.read<BmiCubit>().increaseWeight();
                    },

                    onRemove: () {
                      context.read<BmiCubit>().decreaseWeight();
                    },
                  ),

                  CustomCard(
                    text: "Age",
                    color: const Color(0xffFFF8FA),
                    value: context.watch<BmiCubit>().age,

                    onAdd: () {
                      context.read<BmiCubit>().increaseAge();
                    },

                    onRemove: () {
                      context.read<BmiCubit>().decreaseAge();
                    },
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomHeightCard(),
              ),

              GestureDetector(
                onTap: () {
                  context.read<BmiCubit>().setGender("Female");

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Result()),
                  );
                },

                child: Container(
                  width: 200,

                  height: 63,

                  decoration: BoxDecoration(
                    color: const Color(0xffEC407A),

                    borderRadius: BorderRadius.circular(20),

                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x55EC407A),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),

                  child: Center(
                    child: CustomText(
                      text: "Show results",
                      wight: FontWeight.w500,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
