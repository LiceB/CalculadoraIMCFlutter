import 'package:flutter/material.dart';
import 'package:imc_calculator/constraints.dart';

class IconContent extends StatelessWidget {
  final String text;
  final IconData icon;

  const IconContent({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
