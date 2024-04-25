import 'package:advflutterch1/screen/homescreen/view/components/darkthemebutton.dart';
import 'package:advflutterch1/screen/homescreen/view/components/lightthemebutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme App',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 27),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 150),
        child: Container(
          height: 600,
          width: 400,
          // alignment: Alignment.center,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Yo Man ! ',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                  child: Text(
                    "it's a simple example of \n dark theme",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                ),
                light_theme_button(),
                dark_theme_button()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
