import 'package:flutter/material.dart';
import 'package:imc_calculator/constraints.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final void Function()? onPress;

  CustomCard(
      {super.key, required this.child, required this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
