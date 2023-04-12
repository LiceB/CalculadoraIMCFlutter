import 'package:flutter/material.dart';
import 'package:imc_calculator/constraints.dart';

class SliderContent extends StatelessWidget {
  final int altura;
  final void Function(double) onChanged;

  const SliderContent(
      {super.key, required this.altura, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Altura',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              altura.toString(),
              style: kNumberTextStyle,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        Slider(
          value: altura.toDouble(),
          min: 120,
          max: 220,
          onChanged: onChanged,
        )
      ],
    );
  }
}
