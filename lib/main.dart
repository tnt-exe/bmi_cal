import 'package:bmi_cal/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCal());
}

class BmiCal extends StatelessWidget {
  const BmiCal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
