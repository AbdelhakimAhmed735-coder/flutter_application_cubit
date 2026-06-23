import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/cubits/bmi_cubits/bmi_cubits.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BmiCubit>();
    final isFemale = cubit.gender == "Female";

    final mainColor = isFemale
        ? const Color(0xffEC407A) // Pink
        : const Color(0xff00897B); // Teal
    final bmi = cubit.calculateBMI();

    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),

      appBar: AppBar(
        backgroundColor: mainColor,

        title: const Text(
          "BMI Result",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: 330,

          padding: const EdgeInsets.all(25),

          decoration: BoxDecoration(
            color: mainColor,

            borderRadius: BorderRadius.circular(25),

            boxShadow: const [
              BoxShadow(
                color: Colors.black12,

                blurRadius: 15,

                offset: Offset(0, 8),
              ),
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              const Text(
                "Your BMI",

                style: TextStyle(
                  fontSize: 25,

                  fontWeight: FontWeight.bold,

                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                bmi.toStringAsFixed(1),

                style: const TextStyle(
                  fontSize: 65,

                  fontWeight: FontWeight.bold,

                  color: Color(0xff1565C0),
                ),
              ),

              const SizedBox(height: 10),

              Text(
                cubit.getResult(),

                style: const TextStyle(
                  fontSize: 30,

                  fontWeight: FontWeight.bold,

                  color: Color.fromARGB(255, 21, 22, 22),
                ),
              ),

              const SizedBox(height: 25),

              const Divider(),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  const Text(
                    "Weight",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    "${cubit.weight} kg",
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  const Text(
                    "Height",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    "${cubit.height.toInt()} cm",
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  const Text(
                    "Age",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  Text("${cubit.age}", style: const TextStyle(fontSize: 18)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
