import 'package:flutter/material.dart';
import 'package:imc_calculator/constraints.dart';

class SliderContent extends StatefulWidget {
  const SliderContent({super.key});

  @override
  State<SliderContent> createState() => _SliderContentState();
}

class _SliderContentState extends State<SliderContent> {
  double _currentValue = 0;
  double tamanho = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Altura'.toUpperCase(),
              style: kLabelTextStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _currentValue.toStringAsFixed(0),
                style: kNumberTextStyle,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                ' cm',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Slider(
            divisions: 255,
            min: 0,
            max: 255,
            value: _currentValue,
            onChanged: (value) {
              setState(
                () {
                  _currentValue = value;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
