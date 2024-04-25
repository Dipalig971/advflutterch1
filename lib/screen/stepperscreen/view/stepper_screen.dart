import 'package:advflutterch1/utils/globalvalue.dart';
import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Stepper App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Theme(
        data: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal)),
        child: Stepper(
          currentStep: globalvalue.StepperIndex,
          onStepContinue: () {
            setState(() {
              if (globalvalue.StepperIndex == 2) {
                globalvalue.StepperIndex = 2;
              } else {
                globalvalue.StepperIndex++;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (globalvalue.StepperIndex == 2) {
                globalvalue.StepperIndex--;
              } else {
                globalvalue.StepperIndex = 0;
              }
            });
          },
          stepIconBuilder: (stepIndex, stepState) {
            return const CircleAvatar(
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.done,
                size: 20,
                color: Colors.white,
              ),
            );
          },
          steps: const [
            Step(
              title: Text('Accounts'),
              content: TextField(
                decoration: InputDecoration(
                  labelText: 'Accounts',
                ),
              ),
            ),
            Step(
              title: Text('Address'),
              content: TextField(
                decoration: InputDecoration(labelText: 'Address'),
              ),
            ),
            Step(
              title: Text('Mobile Number'),
              content: TextField(
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(
          Icons.list,
          color: Colors.white,
        ),
      ),
    );
  }
}
