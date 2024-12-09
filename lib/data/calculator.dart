import 'dart:math';

class Calculator {
  final double height; // in cm
  final int weight; // in kg

  double _bmi = 0;

  Calculator({
    required this.height,
    required this.weight,
  });

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Map<String, String> getResults() {
    if (_bmi >= 25) {
      return {
        "result": "Overweight",
        "description":
            "You have a higher than normal body weight. Try to exercise more.",
      };
    } else if (_bmi >= 18.5) {
      return {
        "result": "Normal",
        "description": "You have a normal body weight. Good job!",
      };
    } else {
      return {
        "result": "Underweight",
        "description":
            "You have lower than normal body weight. You can eat a bit more.",
      };
    }
  }
}
