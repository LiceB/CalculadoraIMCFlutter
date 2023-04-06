import 'package:flutter/material.dart';
import 'package:imc_calculator/components/custom_card.dart';
import 'package:imc_calculator/components/icon_content.dart';
import 'package:imc_calculator/constraints.dart';

class CalculadoraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: IconContent(
                      icon: Icons.male,
                      text: 'Masculino',
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: IconContent(
                      icon: Icons.female,
                      text: 'Feminino',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              child: Placeholder(),
            ),
          ),
          Expanded(
            child: CustomCard(
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}