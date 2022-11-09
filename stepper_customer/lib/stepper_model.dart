import 'package:flutter/material.dart';

class StepperDetailModel {
  final Widget stepperChildWidget;
  final bool canTurnBack;
  final Widget ifCanNotTurnBackWidget;
  final bool isCompleted;

  StepperDetailModel({
    required this.stepperChildWidget,
    required this.canTurnBack,
    required this.ifCanNotTurnBackWidget,
    required this.isCompleted,
  });
}
