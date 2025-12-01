import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

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
