import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(
      {required this.weight, required this.height, required this.age});

  // CalculatorBrain(this.weight, this.height);

  final int weight;
  final int height;
  final int age;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (age >= 18) {
      if (_bmi >= 25) {
        return "Overweight";
      } else if (_bmi > 18.5) {
        return "Normal";
      } else {
        return "Underweight";
      }
    } else {
      if (_bmi >= 15) {
        return "Overweight";
      } else if (_bmi > 5.0) {
        return "Normal";
      } else {
        return "Underweight";
      }
    }
  }

  String getComment() {
    if (age >= 18) {
      if (_bmi >= 25) {
        return "You have a higher than normal body weight, you need to exercise!";
      } else if (_bmi > 18.5) {
        return "You have a normal body weight, keep it up!";
      } else {
        return "You have lower than normal body weight, you need to consume more collieries!";
      }
    } else {
      if (_bmi >= 15) {
        return "You have a higher than normal body weight, you need to exercise!";
      } else if (_bmi > 5.0) {
        return "You have a normal body weight, keep it up!";
      } else {
        return "You have lower than normal body weight, you need to consume more collieries!";
      }
    }
  }
}
