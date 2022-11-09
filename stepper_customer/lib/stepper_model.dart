import 'package:flutter/material.dart';

class StepperDetailModel {
  final Widget stepperChildWidget;
  final bool canTurnBack;
  final Widget? ifCanNotTurnBackWidget;
  bool? isCompleted;

  StepperDetailModel({
    required this.stepperChildWidget,
    required this.canTurnBack,
    this.ifCanNotTurnBackWidget,
    this.isCompleted = false,
  });
}
