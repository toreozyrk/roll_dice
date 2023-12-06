import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.myText, {super.key});

  final String myText;

  @override
  Widget build(context){
    return Text(
              myText,
              style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 32
              ),
            );
  }
}