import 'package:flutter/material.dart';

class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const ResponsiveContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double responsiveWidth = width > 1024 ? width / 2 : width;

    return Center(
      child: Container(
        width: responsiveWidth,
        padding: padding,
        margin: margin,
        child: child,
      ),
    );
  }
}
