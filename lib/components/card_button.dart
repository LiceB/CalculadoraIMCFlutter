import 'package:flutter/material.dart';
import 'package:imc_calculator/constraints.dart';

class CardButton extends StatefulWidget {
  final String labelText;

  const CardButton({required this.labelText});

  @override
  State<CardButton> createState() => _CardButtonState();
}

class _CardButtonState extends State<CardButton> {
  int _height = 0;

  void _incrementHeight() {
    setState(() {
      _height++;
    });
  }

  void _decrementHeight() {
    if (_height > 0) {
      setState(() {
        _height--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              widget.labelText.toUpperCase(),
              style: kLabelTextStyle,
            ),
          ),
          Text(
            '${_height}',
            style: kNumberTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 76, 79, 94),
                child: IconButton(
                  onPressed: _incrementHeight,
                  icon: const Icon(Icons.add),
                ),
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 76, 79, 94),
                child: IconButton(
                  onPressed: _decrementHeight,
                  icon: const Icon(Icons.remove),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
