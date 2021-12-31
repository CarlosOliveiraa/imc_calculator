import 'dart:math' as math;

class Person {
  final double weight;
  final double height;

  Person({required this.weight, required this.height});

  double calculate() {
    double imc = weight / (height * height);
    return double.parse(imc.toStringAsPrecision(4));
  }
  // double get imc {
  //   var result = weight / math.pow(height, 2);
  //   result = result * 100;
  //   return result.roundToDouble() / 100;
  // }
}
