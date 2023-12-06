import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';
// ignore: unused_import
import 'package:roll_dice/styled_text.dart';

 var startAlign = Alignment.topLeft;
 var endAlign = Alignment.bottomRight;



class GradientContainer extends StatelessWidget {
  const GradientContainer(this.myColors, {super.key});

  final List<Color> myColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient:
            LinearGradient(begin: startAlign, end: endAlign, colors: myColors),
      ),
      child: const Center(
          child: DiceRoller(),
      ),
    );
  }
}