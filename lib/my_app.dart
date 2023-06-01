import 'package:flutter/material.dart';
import 'package:roll/dice_roller.dart';

class MyApp extends StatelessWidget {
  final List<int> list;
  void rollDice() {}
  const MyApp(this.list, {Key? key}) : super(key: key);
  MyApp.test({super.key}) : list = [12, 13, 14, 15];
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
