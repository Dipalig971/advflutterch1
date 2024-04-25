import 'package:advflutterch1/screen/homescreen/view/home_screen.dart';
import 'package:advflutterch1/screen/stepperscreen/view/stepper_screen.dart';
import 'package:flutter/material.dart';

import 'screen/stepperscreen/view/stepper_screen_2.dart';

void main() {
  runApp(const ThemeApp());
}

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      // themeMode: (isdark)?ThemeMode.light:ThemeMode.dark,
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      home: const HorizontalStepperScreen(),
    );
  }
}

