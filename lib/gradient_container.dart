import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dice_roller.dart';
import 'package:flutter_complete_guide/text_style.dart';

// Alignment? starAlign; this is an alt method of var initializaion that let you use null values.
// be as restrictive as possible with your code.
//const variables will lock in code at the time that it is compiled.
Alignment starAlign = Alignment.topLeft;
final endAlign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(contex) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: starAlign,
          end: endAlign,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
