import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  final GestureTapCallback? onPressed;

  const BmiCard({
    super.key,
    required this.color,
    this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
