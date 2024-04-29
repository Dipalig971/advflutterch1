import 'package:advflutterch1/screen/counterscreen/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Counter App',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Text(Provider.of<CounterProvider>(context,listen: true).count.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
      ),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.teal,
        onPressed: () {
        Provider.of<CounterProvider>(context,listen: false).increment();
        },child: const Icon(Icons.add,),
      ),
    );
  }
}








