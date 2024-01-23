import 'package:flutter/material.dart';
import 'dart:math';
  final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDic() {
    setState(() {
      currentDiceRoll = random.nextInt(6) + 1; //generate random num 1-6
    });
    // print('chanding image..'); // print on console
  }

  @override
  Widget build(context) {
    return Column(
        //Column: takes all the avalible vertical space
        mainAxisSize: MainAxisSize.min, // the vertical axis
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
          // child: StyledText('hello'),
          const SizedBox(
            height: 20,
          ), //vertical space between image and TextButton,  SizedBox alternative of padding
          TextButton(
            onPressed: rollDic,
            style: TextButton.styleFrom(
              // padding:const EdgeInsets.only(
              //   top: 20,
              //   ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll Dice'),
          )
        ]);
  }
}
