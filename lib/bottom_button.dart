import 'package:bmi_cal/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const BottomButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
