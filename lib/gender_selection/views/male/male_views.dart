import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/constants/custom_text.dart';
import 'package:flutter_application_cubit/cubits/bmi_cubits/bmi_cubits.dart';
import 'package:flutter_application_cubit/shared/custom_card.dart';
import 'package:flutter_application_cubit/shared/custom_height_card.dart';
import 'package:flutter_application_cubit/gender_selection/views/result/result.dart'
    show Result;
import 'package:flutter_bloc/flutter_bloc.dart';

class MaleViews extends StatefulWidget {
  const MaleViews({super.key});

  @override
  State<MaleViews> createState() => _MaleViewsState();
}

class _MaleViewsState extends State<MaleViews> {
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // خلفية أزرق فاتح
      backgroundColor: const Color(0xffE3F2FD),

      appBar: AppBar(
        // لون البار
        backgroundColor: const Color(0xff90CAF9),

        title: const Text(
          "Male",
          style: TextStyle(
            color: Color(0xff0D47A1),
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
                    color: const Color(0xff1565C0),
                    size: 40,
                  ),

                  const SizedBox(width: 5),

                  CustomText(
                    text: "Calculator",
                    wight: FontWeight.bold,
                    color: const Color(0xff00897B),
                    size: 40,
                  ),
                ],
              ),

              const SizedBox(height: 25),

              CustomText(
                text: "Please modify the values",
                wight: FontWeight.bold,
                color: const Color(0xff263238),
                size: 25,
              ),

              const SizedBox(height: 40),

              Row(
                children: [
                  CustomCard(
                    text: "Weight",

                    color: const Color(0xffFFFFFF),

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

                    color: const Color(0xffFFFFFF),

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
                  context.read<BmiCubit>().setGender("Male");

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Result()),
                  );
                },

                child: Container(
                  width: 200,

                  height: 63,

                  decoration: BoxDecoration(
                    color: const Color(0xff00897B),

                    borderRadius: BorderRadius.circular(20),

                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x5500897B),

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
