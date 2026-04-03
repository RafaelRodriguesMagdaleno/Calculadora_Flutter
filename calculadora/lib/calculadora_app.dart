import 'package:calculadora/tela_caculadora.dart';
import 'package:flutter/material.dart';

class CalculadoraApp extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora",
      home: TelaCaculadora()
    );
  }
}