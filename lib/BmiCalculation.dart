import 'dart:math';

class BmiCalculation {
  final int height;
  final int weight;

  BmiCalculation(this.height, this.weight);

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretaion() {
    if (_bmi >= 25)
      return 'You Have a Higher than normal body weight. Try working out more. ';
    else if (_bmi > 18.5)
      return 'Your BodyMassIndex is absolutely fine. WellDone.';
    else {
      return 'You have lower BodyMassIndex. You can eat a bit more.';
    }
  }
}
