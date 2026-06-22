import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/constants/app_color.dart';
import 'package:flutter_application_cubit/constants/custom_text.dart';
import 'package:flutter_application_cubit/shared/custom_card.dart';
import 'package:flutter_application_cubit/shared/custom_height_card.dart';
import 'package:flutter_application_cubit/gender_selection/views/result/result.dart'
    show Result;

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
      backgroundColor: const Color.fromARGB(255, 84, 205, 179),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 199, 164, 177),
        title: Text("Male"),
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
                    color: AppColor.seconedColor,
                    size: 40,
                  ),
                  SizedBox(width: 5),
                  CustomText(
                    text: "Calculator",
                    wight: FontWeight.bold,
                    color: AppColor.primaryColor,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(height: 25),
              CustomText(
                text: "Please modify the values",
                wight: FontWeight.bold,
                color: Colors.black,
                size: 25,
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  CustomCard(
                    text: "Weight(Kg)",
                    color: Color.fromARGB(255, 109, 230, 212),
                  ),
                  CustomCard(
                    text: "Age",
                    color: Color.fromARGB(255, 109, 230, 212),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomHeightCard(),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Result()),
                  );
                },
                child: Container(
                  width: 200,
                  height: 63,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
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
