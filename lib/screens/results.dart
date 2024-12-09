import 'package:bmi_cal/widgets/bmi_card.dart';
import 'package:bmi_cal/widgets/bottom_button.dart';
import 'package:bmi_cal/common/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DEAD SIMPLE BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              alignment: Alignment.bottomCenter,
              child: const Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          const Expanded(
            flex: 5,
            child: BmiCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Normal",
                    style: kResultTextStyle,
                  ),
                  Text(
                    "18.3",
                    style: kBMITextStyle,
                  ),
                  Text(
                    "You have a normal body weight. Good job!",
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onPressed: () => Navigator.pop(context),
            text: "RE-CALCULATE",
          ),
        ],
      ),
    );
  }
}
