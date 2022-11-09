import 'package:flutter/material.dart';
import 'package:stepper_customer/stepper.dart';
import 'package:stepper_customer/stepper_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<StepperDetailModel> stepperModelList = [
    StepperDetailModel(
        stepperChildWidget: const Text("1.Sayfa"),
        canTurnBack: true,
        ifCanNotTurnBackWidget: const Text("Bu sayfayı güncelleyemezsiniz."),
        isCompleted: false),
    StepperDetailModel(
        stepperChildWidget: const Text("2.Sayfa"),
        canTurnBack: true,
        ifCanNotTurnBackWidget: const Text("Bu sayfayı güncelleyemezsiniz."),
        isCompleted: false),
    StepperDetailModel(
        stepperChildWidget: const Text("3.Sayfa"),
        canTurnBack: true,
        ifCanNotTurnBackWidget: const Text("Bu sayfayı güncelleyemezsiniz."),
        isCompleted: false),
    StepperDetailModel(
        stepperChildWidget: const Text("4.Sayfa"),
        canTurnBack: true,
        ifCanNotTurnBackWidget: const Text("Bu sayfayı güncelleyemezsiniz."),
        isCompleted: false),
    StepperDetailModel(
        stepperChildWidget: const Text("5.Sayfa"),
        canTurnBack: true,
        ifCanNotTurnBackWidget: const Text("Bu sayfayı güncelleyemezsiniz."),
        isCompleted: false),
    StepperDetailModel(
        stepperChildWidget: const Text("6.Sayfa"),
        canTurnBack: true,
        ifCanNotTurnBackWidget: const Text("Bu sayfayı güncelleyemezsiniz."),
        isCompleted: false),
  ];
  int stepperCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  stepperModelList[stepperCurrentIndex].isCompleted == true;
                  print(stepperModelList[stepperCurrentIndex].isCompleted);
                  stepperCurrentIndex++;
                });
              },
              child: const Text("dsddfds"),
            ),
            AppStepper(
              currentPageIndex: stepperCurrentIndex,
              stepNumber: 6,
              onPageChanged: (value) {
                setState(() {
                  stepperCurrentIndex = value;
                  print(value);
                });
              },
              stepperModelList: stepperModelList,
            )
          ],
        ),
      )),
    );
  }
}
