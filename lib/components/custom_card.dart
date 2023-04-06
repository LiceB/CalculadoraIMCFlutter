import 'package:flutter/material.dart';
import 'package:imc_calculator/constraints.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  const CustomCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: kInactiveCardColour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
