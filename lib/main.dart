import 'package:advflutterch1/screen/change_theme_using_provider/provider/change_theme_provider.dart';
import 'package:advflutterch1/screen/counterscreen/provider/counter_provider.dart';
import 'package:advflutterch1/screen/counterscreen/view/counter_screen.dart';
import 'package:advflutterch1/screen/homescreen/view/home_screen.dart';
import 'package:advflutterch1/screen/introscreen/view/introscreen1.dart';
import 'package:advflutterch1/screen/introscreen/view/introscreen2.dart';
import 'package:advflutterch1/screen/photogallery/provider/gallery_provider.dart';
import 'package:advflutterch1/screen/photogallery/view/photo_gallery_screen.dart';
import 'package:advflutterch1/screen/stepperscreen/view/stepper_screen.dart';
import 'package:advflutterch1/urlscreen/view/contact_us_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen/change_theme_using_provider/view/change_theme_screen.dart';
import 'screen/stepperscreen/view/stepper_screen_2.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GalleryProvider(),
        ),
      ],
      builder: (context, child) => const ThemeApp(),
    ),
  );

  //   ChangeNotifierProvider(
  // create: (context) => CounterProvider(),
  // child: ThemeApp(),
}

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ThemeProvider>(context).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
            // onSecondary: Colors.pink
            ),
      ),
      darkTheme: ThemeData.dark(),
      home: const GalleryScreen(),
    );
  }
}
