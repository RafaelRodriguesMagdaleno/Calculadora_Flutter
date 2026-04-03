import 'package:calculadora/calculadora.dart';
import 'package:flutter/material.dart';

class TelaCaculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(child: Calculadora(),),
    );
  }
}