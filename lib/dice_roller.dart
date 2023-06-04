import 'dart:math';
import 'package:flutter/material.dart';

//since this is a final variable it can be made outside of the _DiceRollerState widget
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // code in here get rexecuted every time the state obj changes
  var currentDiceRoll = 2;

  RollDice() {
    //Random().nextInt(6) this just does 0-5 we need to add one to get to six
    //var diceRoll = Random().nextInt(6) + 1;

    /*When we load the app the build method only runs once so if we 
    chang the variable that variables state will only be reflected Once
    we have to use the setState() function in order for the build context to run again
    This is what went wrong with strength together.*/
    setState(() {
      //$diceroll injects the random dice roll number into the image
      //This way works but it not optimal because we are storing a new obj in memory and then throwing it away over n over
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
          onPressed: RollDice,
          style: TextButton.styleFrom(
              // padding: EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28)),
          child: Text('Roll ya dice'))
    ]);
  }
}
