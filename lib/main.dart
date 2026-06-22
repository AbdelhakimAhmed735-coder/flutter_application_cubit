import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/cubits/bmi_cubits/bmi_cubits.dart';
import 'package:flutter_application_cubit/gender_selection/views/gender_selection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => BmiCubit(),
        child: GenderSelection(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
