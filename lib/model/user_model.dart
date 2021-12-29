class Person {
  final double weight;
  final double height;

  Person({required this.weight, required this.height});

  double calculate() {
    double imc = weight / (height * height);
    return double.parse(imc.toStringAsPrecision(4));
  }
}
