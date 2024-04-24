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
     body: Column(
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 200,left: 30,right: 30),
           child: Container(
             padding: EdgeInsets.symmetric(horizontal: 400),
             height: 600,
             width: 400,
             child: Column(
               children: [

               ],
             ),
           ),
         )
       ],
     ),
    );
  }
}
