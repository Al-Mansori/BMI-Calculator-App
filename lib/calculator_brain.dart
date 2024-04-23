// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 0;
  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = (1.3 * weight) / (pow(height / 100, 2.5));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getResultMessage() {
    if (_bmi >= 25)
      return 'You have a higher than normal body weight. Try to exercise more.';
    else if (_bmi > 18.5)
      return 'You have a normal body weight. Good job!';
    else
      return 'You have a lower than normal body weight. You can eat a bit more ';

    
  }
}
