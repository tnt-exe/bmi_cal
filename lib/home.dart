import 'package:bmi_cal/bmi_card.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Colors.pink;

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("BMI CALCULATOR"),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BmiCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
