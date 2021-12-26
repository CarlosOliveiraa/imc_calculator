import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController weihtController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  String infoText = 'Informe seus dados!';

  void calculate() {
    setState(() {
      double weight = double.parse(weihtController.text);
      double height = double.parse(heightController.text) / 100;
      double imc = weight / (height * height);
      if (imc < 18.5) {
        infoText = 'Abaixo do peso (${imc.toStringAsPrecision(4)})';
      } else if (imc > 18.5 || imc < 24.5) {
        infoText = 'Peso ideal (${imc.toStringAsPrecision(4)})';
      } else if (imc > 25 || imc < 29.9) {
        infoText = 'Sobrepeso (${imc.toStringAsPrecision(4)})';
      } else if (imc > 30 || imc < 34.9) {
        infoText = 'Obesidade Grau I (${imc.toStringAsPrecision(4)})';
      } else if (imc > 35 || imc < 39.9) {
        infoText = 'Obesidade Grau II (${imc.toStringAsPrecision(4)})';
      } else if (imc > 40) {
        infoText = 'Obesidade Grau III (${imc.toStringAsPrecision(4)})';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculadora IMC'),
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: weihtController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Peso',
                ),
              ),
              TextField(
                controller: heightController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Altura',
                ),
              ),
              // ignore: sized_box_for_whitespace
              GestureDetector(
                onTap: calculate,
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: const Text(
                    'Calcular',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(
                infoText,
                style: const TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
