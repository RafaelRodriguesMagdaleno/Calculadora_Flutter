import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CaculadoraState();
  }
}

class _CaculadoraState extends State<Calculadora> {

  String _resultado = "Resultado";


  var _numero1Controller = TextEditingController();
  var _numero2Controller = TextEditingController();

  void _somar() {
    double num1 = double.tryParse(_numero1Controller.text) ?? 0.0;
    double num2 = double.tryParse(_numero2Controller.text) ?? 0.0;
    setState(() {
      _resultado = (num1 + num2).toString();
    });
  }

  void _subtrair() {
    double num1 = double.tryParse(_numero1Controller.text) ?? 0.0;
    double num2 = double.tryParse(_numero2Controller.text) ?? 0.0;
    setState(() {
      _resultado = (num1 - num2).toString();
    });
  }

  void _multiplicar() {
    double num1 = double.tryParse(_numero1Controller.text) ?? 0.0;
    double num2 = double.tryParse(_numero2Controller.text) ?? 0.0;
    setState(() {
      _resultado = (num1 * num2).toString();
    });
  }

  void _dividir() {
    double num1 = double.tryParse(_numero1Controller.text) ?? 0.0;
    double num2 = double.tryParse(_numero2Controller.text) ?? 0.0;
    setState(() {
      if (num1 == 0 || num2 == 0) {
        _resultado = ("DIVISÃO POR ZERO").toString();
      }
      else {
        _resultado = (num1 / num2).toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 120,
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true
                ),
                controller: _numero1Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Número 1"
                ),
              ),
            ),
            SizedBox(
              width: 120,
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(
                  signed: true,
                  decimal: true
                ),
                controller: _numero2Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Número 2"
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {_somar();}, child: Text("+", style: TextStyle(fontSize:20),)
            ),
            ElevatedButton(onPressed: () {_subtrair();}, child: Text("-", style: TextStyle(fontSize: 20),)
            ),
            ElevatedButton(onPressed: () {_multiplicar();}, child: Text("x", style: TextStyle(fontSize: 20),)
            ),
            ElevatedButton(onPressed: () {_dividir();}, child: Text("/", style: TextStyle(fontSize: 20),)
            )
          ],
        ),
        SizedBox(height: 30,),
        Text(
          _resultado,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary
          ),
        )
      ],
    );
  }
}