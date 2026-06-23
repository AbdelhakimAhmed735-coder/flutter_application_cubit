import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/constants/app_color.dart';
import 'package:flutter_application_cubit/constants/custom_text.dart';
import 'package:flutter_application_cubit/gender_selection/views/female/female_views.dart';
import 'package:flutter_application_cubit/shared/custom_container.dart';
import 'package:flutter_application_cubit/gender_selection/views/male/male_views.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String selectedgender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Column(
            children: [
              const SizedBox(height: 60),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  CustomText(
                    text: "BMI",
                    wight: FontWeight.bold,
                    color: const Color(0xff1565C0),
                    size: 50,
                  ),

                  CustomText(
                    text: "Calculator",
                    wight: FontWeight.bold,
                    color: const Color(0xffEC407A),
                    size: 50,
                  ),
                ],
              ),

              CustomText(
                color: const Color(0xff37474F),

                size: 20,

                wight: FontWeight.w400,

                text: "Please choose your gender",
              ),

              const SizedBox(height: 40),

              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedgender = "male";
                  });
                },

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    border: Border.all(
                      color: selectedgender == "male"
                          ? const Color(0xff1976D2)
                          : Colors.transparent,

                      width: 4,
                    ),
                  ),

                  child: CustomContainer(
                    image: "asstes/malepicturepng.png",

                    text: "Male",

                    color: const Color(0xff90CAF9),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedgender = "female";
                  });
                },

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    border: Border.all(
                      color: selectedgender == "female"
                          ? const Color(0xffEC407A)
                          : Colors.transparent,

                      width: 4,
                    ),
                  ),

                  child: CustomContainer(
                    image: "asstes/femalepicture.png",

                    text: "Female",

                    color: const Color(0xffF8BBD0),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              GestureDetector(
                onTap: () {
                  if (selectedgender == "male") {
                    Navigator.push(
                      context,

                      MaterialPageRoute(
                        builder: (context) => const MaleViews(),
                      ),
                    );
                  } else if (selectedgender == "female") {
                    Navigator.push(
                      context,

                      MaterialPageRoute(
                        builder: (context) => const FemaleViews(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please choose your gender"),
                      ),
                    );
                  }
                },

                child: Container(
                  width: 200,

                  height: 63,

                  decoration: BoxDecoration(
                    color: const Color(0xff7E57C2),

                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Center(
                    child: CustomText(
                      text: "Continue",

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
