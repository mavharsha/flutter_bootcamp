
import 'dart:math';

class BMIEngine{

  final int height;
  final int weight;

  double _bmi;
  BMIEngine({this.height, this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getBMIState() {
    if(_bmi >= 25) {
      return 'OVERWEIGHT!';
    } else if( _bmi > 18) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getDescription() {
    if(_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise!';
    } else if( _bmi > 18) {
      return 'You have normal body weight. Good Job!';
    } else {
      return 'You have lower than normal body weight. You can eat a bit more.';
    }
  }
}