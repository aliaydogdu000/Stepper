import 'package:flutter/material.dart';
import 'package:stepper_customer/stepper.dart';
import 'package:stepper_customer/stepperCannotTurnBackWidget.dart';
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
  changeIsCompletedValue(int index) {
    setState(() {
      stepperModelList[index].isCompleted = true;
    });
  }

  List<StepperDetailModel> stepperModelList = [
    StepperDetailModel(
      stepperChildWidget: const Text(
        style: TextStyle(fontWeight: FontWeight.bold),
        '1.Şube Seçimi',
      ),
      canTurnBack: true,
      ifCanNotTurnBackWidget: const Text("Bu sayfayı güncelleyemezsiniz."),
    ),
    StepperDetailModel(
      stepperChildWidget: const Text(style: TextStyle(fontWeight: FontWeight.bold), "2.Adres Teyidi"),
      canTurnBack: true,
      ifCanNotTurnBackWidget: const Text("Bu sayfayı güncelleyemezsiniz."),
    ),
    StepperDetailModel(
      stepperChildWidget: const Text(style: TextStyle(fontWeight: FontWeight.bold), "3.Hesap Açılış Süreci"),
      canTurnBack: false,
      ifCanNotTurnBackWidget: const IfCannotTurnBackWidget(
        bottomWidget: Page3CannotTurnBackWidget(),
      ),
    ),
    StepperDetailModel(
      stepperChildWidget: const Text(style: TextStyle(fontWeight: FontWeight.bold), "4.Uygunluk Testi"),
      canTurnBack: true,
      ifCanNotTurnBackWidget: const Text("Bu sayfayı güncelleyemezsiniz."),
    ),
    StepperDetailModel(
      stepperChildWidget: const Text(style: TextStyle(fontWeight: FontWeight.bold), "5.Sözleşme Onayı"),
      canTurnBack: false,
      ifCanNotTurnBackWidget: const IfCannotTurnBackWidget(
        bottomWidget: Page5CannotTurnBackWidget(),
      ),
    ),
    StepperDetailModel(
      stepperChildWidget: const Text(style: TextStyle(fontWeight: FontWeight.bold), "6.Belge Yükleme"),
      canTurnBack: true,
      ifCanNotTurnBackWidget: const Text("Bu sayfayı güncelleyemezsiniz."),
    ),
  ];
  int stepperCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    StepperDetailModel stepperCurrent = stepperModelList[stepperCurrentIndex];
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppStepper(
              stepperChildWidget: stepperCurrent.isCompleted == true && stepperCurrent.canTurnBack == false
                  ? stepperCurrent.ifCanNotTurnBackWidget!
                  : stepperCurrent.stepperChildWidget,
              currentPageIndex: stepperCurrentIndex,
              stepNumber: 6,
              onPageChanged: (value) {
                setState(() {
                  stepperCurrentIndex = value;
                });
              },
              stepperModelList: stepperModelList,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  changeIsCompletedValue(stepperCurrentIndex);
                  if (stepperCurrentIndex < 5) {
                    stepperCurrentIndex++;
                  }
                });
              },
              child: const Text("Buton"),
            ),
          ],
        ),
      )),
    );
  }
}
