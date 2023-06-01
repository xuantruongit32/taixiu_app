import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  const StyledText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(240, 234, 80, 75),
        fontSize: 60,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
