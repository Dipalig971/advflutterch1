import 'package:advflutterch1/screen/change_theme_using_provider/provider/change_theme_provider.dart';
import 'package:advflutterch1/screen/counterscreen/provider/counter_provider.dart';
import 'package:advflutterch1/screen/counterscreen/view/counter_screen.dart';
import 'package:advflutterch1/screen/homescreen/view/home_screen.dart';
import 'package:advflutterch1/screen/stepperscreen/view/stepper_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen/change_theme_using_provider/view/change_theme_screen.dart';
import 'screen/stepperscreen/view/stepper_screen_2.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: ThemeApp(),
    ),

    //   ChangeNotifierProvider(
    // create: (context) => CounterProvider(),
    // child: ThemeApp(),
  );
}

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ThemeProvider>(context).isDark?ThemeMode.dark:ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
          // onSecondary: Colors.pink
        )
      ),
      darkTheme: ThemeData.dark(),
      home: const ChangeThemeScreen(),
    );
  }
}
