import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {super.key,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.buttonInnerWidget});

  final double buttonHeight, buttonWidth;
  final Widget buttonInnerWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(50),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[300],
          fixedSize: Size(buttonHeight, buttonWidth),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: () {},
        child: buttonInnerWidget,
      ),
    );
  }
}
