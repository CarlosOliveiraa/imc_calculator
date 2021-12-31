import 'package:flutter_test/flutter_test.dart';
import 'package:imc_calculator/controller/imc_controller.dart';

void main() {
  final controller = ImcController();
  controller.setWeight('80');
  controller.setHeight('170');


  
  test('O imc deve retornar 27.68', () {
    expect(controller.imcResult(), 'Sobrepeso (27.68)');
  });
}
