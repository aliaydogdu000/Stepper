import 'package:flutter/material.dart';
import 'package:stepper_customer/stepper_model.dart';

class AppStepper extends StatelessWidget {
  final int currentPageIndex;
  final int stepNumber;
  final List<String>? labelNameList;
  final ValueChanged<int> onPageChanged;
  final List<StepperDetailModel> stepperModelList;

  const AppStepper({
    super.key,
    required this.currentPageIndex,
    required this.stepNumber,
    required this.onPageChanged,
    this.labelNameList,
    required this.stepperModelList,
  });

  void updateCurrentIndex(int index) => onPageChanged(index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [...stepGenerate(context)],
            ),
            stepperModelList[currentPageIndex].stepperChildWidget
          ],
        ),
      ),
    );
  }

  List stepGenerate(BuildContext context) {
    return List.generate(stepNumber, (index) {
      return Container(
        constraints: const BoxConstraints(
          minWidth: 35,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                InkWell(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    if (index < currentPageIndex) {
                      updateCurrentIndex(index);
                    }
                  },
                  child: Container(
                    height: 24,
                    constraints: const BoxConstraints(
                      maxWidth: 24,
                      minWidth: 10,
                    ),
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: currentPageIndex == index ? Colors.red : Colors.purple,
                        ),
                        color: currentPageIndex - 1 < index
                            ? currentPageIndex == index
                                ? Colors.green
                                : Colors.amber
                            : Colors.black),
                    child: Center(
                      child: currentPageIndex - 1 < index
                          ? Text(
                              "${index + 1}",
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: currentPageIndex == index ? Colors.blue : Colors.brown,
                                    fontSize: 14,
                                  ),
                            )
                          : const Icon(
                              Icons.done,
                              size: 14,
                              color: Colors.white,
                            ),
                    ),
                  ),
                ),
                labelNameList != null
                    ? Container(
                        constraints: const BoxConstraints(
                          minWidth: 35,
                        ),
                        margin: const EdgeInsets.all(4),
                        child: Text(
                          labelNameList![index],
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            index != stepNumber - 1
                ? Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    color: Colors.pink,
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      maxWidth: 24,
                    ),
                    height: 2,
                  )
                : const SizedBox(),
          ],
        ),
      );
    });
  }
}