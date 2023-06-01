import 'package:flutter/material.dart';
import 'dart:math';

import 'package:roll/styled_text.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var i = Random().nextInt(6) + 1;
  var i2 = Random().nextInt(6) + 1;
  var i3 = Random().nextInt(6) + 1;
  String text = '';
  void rollDice() {
    setState(() {
      i = random.nextInt(6) + 1;
      i2 = random.nextInt(6) + 1;
      i3 = random.nextInt(6) + 1;
      if (i == i2 && i2 == i3) {
        text = 'Bao~';
      } else if (4 <= i + i2 + i3 && i + i2 + i3 <= 10) {
        text = 'Xiu?';
      } else {
        text = 'Tai';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StyledText(text),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/dice-images/dice-$i.png',
              width: 100,
            ),
            Image.asset(
              'assets/dice-images/dice-$i2.png',
              width: 100,
            ),
            Image.asset(
              'assets/dice-images/dice-$i3.png',
              width: 100,
            ),
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 0.1),
              foregroundColor: Colors.red,
              textStyle: const TextStyle(
                fontSize: 28,
                color: Colors.black,
              )),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
