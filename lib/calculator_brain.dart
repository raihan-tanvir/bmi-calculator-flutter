import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = (weight / pow(height * 2.54 / 100, 2));
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  List<String> getBMIResult() {
    String status, comment;

    if (_bmi >= 25) {
      status = 'Overweight';
      comment =
          'You have a higher body weight than that you should. Do exercise more!';
    } else if (_bmi >= 18.5) {
      status = 'Normal';
      comment = 'Your are in perfect shape. Good job!';
    } else {
      status = 'Underweight';
      comment =
          'You have a lower body weight than that you should. Do eat more.';
    }
    return [status, comment];
  }
}
