class Person {
  double? weight;
  double? height;

  void calculate() {
    double result = weight! / (height! * height!);
  }
}
