import 'package:imc_calculator/model/user_model.dart';

class ImcController {
  double _weight = 0;
  double _height = 0;

  void setWeight(String weight) {
    _weight = double.parse(weight);
  }

  void setHeight(String height) {
    _height = double.parse(height);
  }

  String imcResult() {
    Person person = Person(weight: _weight, height: _height);

    double imc = person.calculate();

    String _result = 'Informe seus dados';

    if (imc < 18.5) {
      _result = 'Abaixo do peso (${imc.toStringAsPrecision(2)})';
    } else if (imc > 18.5 || imc < 24.5) {
      _result = 'Peso ideal (${imc.toStringAsFixed(2)})';
    } else if (imc > 25 || imc < 29.9) {
      _result = 'Sobrepeso (${imc.toStringAsFixed(2)})';
    } else if (imc > 30 || imc < 34.9) {
      _result = 'Obesidade Grau I (${imc.toStringAsFixed(2)})';
    } else if (imc > 35 || imc < 39.9) {
      _result = 'Obesidade Grau II (${imc.toStringAsFixed(2)})';
    } else if (imc > 40) {
      _result = 'Obesidade Grau III (${imc.toStringAsFixed(2)})';
    }
    return _result;
  }
}
