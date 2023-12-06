import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 4, 92, 48),
          Color.fromARGB(255, 83, 86, 169),
          Color.fromARGB(255, 117, 38, 162)])
      ),
    ),
  );
}