import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  final Color color;
  final Widget? child;

  const BmiCard({
    super.key,
    required this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
