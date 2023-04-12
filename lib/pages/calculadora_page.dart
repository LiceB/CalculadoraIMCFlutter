import 'package:flutter/material.dart';
import 'package:imc_calculator/calculadora.dart';
import 'package:imc_calculator/components/bottom_button.dart';
import 'package:imc_calculator/components/model_result.dart';
import 'package:imc_calculator/components/roundicon_button.dart';
import 'package:imc_calculator/components/custom_card.dart';
import 'package:imc_calculator/components/icon_content.dart';
import 'package:imc_calculator/components/slider_content.dart';
import 'package:imc_calculator/constraints.dart';

enum Sexo { masculino, feminino }

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  Sexo? sexoSelecionado;
  int idade = 20;
  int peso = 50;
  int altura = 120;

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
                    onPress: () {
                      setState(() {
                        sexoSelecionado = Sexo.masculino;
                      });
                    },
                    color: sexoSelecionado == Sexo.masculino
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    child: IconContent(
                      icon: Icons.male,
                      text: 'Masculino',
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    onPress: () {
                      setState(() {
                        sexoSelecionado = Sexo.feminino;
                      });
                    },
                    color: sexoSelecionado == Sexo.feminino
                        ? kActiveCardColour
                        : kInactiveCardColour,
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
              color: kActiveCardColour,
              child: SliderContent(
                altura: altura,
                onChanged: (double novaAltura) {
                  setState(() {
                    altura = novaAltura.toInt();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    color: kActiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PESO',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          peso.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    peso++;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  peso--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: kActiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'IDADE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          idade.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                if (idade <= 120) {
                                  setState(() {
                                    idade++;
                                  });
                                }
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                if (idade >= 1) {
                                  setState(() {
                                    idade--;
                                  });
                                }
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'Calcular IMC',
            onPressed: () {
              double imc = Calculadora.calcularIMC(peso: peso, altura: altura);
              String resultado = Calculadora.obterResultado(imc);

              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return ModalResult(imc: imc, resultado: resultado);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
