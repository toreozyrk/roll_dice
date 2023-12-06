import 'package:flutter/material.dart';
import 'dart:math';

final randomGenerator = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{

  var activeDiceImage = "assets/dice_images/dice-1.png";

  void rollDice(){
    int newDice = randomGenerator.nextInt(6) + 1;
    setState(() {
        activeDiceImage = "assets/dice_images/dice-$newDice.png";
    });
   }
  
  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          const SizedBox(height: 20,
          ),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 143, 181),
                backgroundColor: const Color.fromARGB(255, 76, 65, 65),
                textStyle: const TextStyle(fontSize: 32) ),
            child: const Text("Press to roll the dice"),
          )
        ],
      );
  }
  
}