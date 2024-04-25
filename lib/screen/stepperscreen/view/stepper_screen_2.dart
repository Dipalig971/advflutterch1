import 'package:advflutterch1/screen/stepperscreen/view/components/contact_details.dart';
import 'package:advflutterch1/screen/stepperscreen/view/components/personal_details.dart';
import 'package:flutter/material.dart';
import 'package:advflutterch1/utils/globalvalue.dart';

class HorizontalStepperScreen extends StatefulWidget {
  const HorizontalStepperScreen({super.key});

  @override
  State<HorizontalStepperScreen> createState() =>
      _HorizontalStepperScreenState();
}

class _HorizontalStepperScreenState extends State<HorizontalStepperScreen> {
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
            colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
              backgroundColor: Colors.white
        )),
        child: Stepper(
           // elevation: 1,
          type: StepperType.horizontal,
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
          steps:  [
            Step(
              title: const Text('Personal'),
              content: personal_detail()
            ),
            Step(
              title: const Text('Contact'),
              content: contact_details()
            ),
            const Step(
              title: Text('update'),
              content: TextField(
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
