import 'package:flutter/material.dart';
import 'package:imc_calculator/controller/imc_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _result = 'Informe seus dados';

  ImcController imcController = ImcController();

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
                onChanged: imcController.setWeight,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Peso',
                ),
              ),
              TextField(
                onChanged: imcController.setHeight,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Altura',
                ),
              ),
              // ignore: sized_box_for_whitespace
              GestureDetector(
                onTap: () {
                  setState(() {
                    _result = imcController.imcResult();
                  });
                },
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
                _result,
                style: const TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
