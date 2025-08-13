import 'package:flutter/material.dart';

class myText extends StatelessWidget {
  const myText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello Flutter Docs.',
      style: TextStyle(
        fontSize: 25,
        color: Colors.lightBlue,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
