import 'package:flutter/material.dart';

class MyFont extends StatelessWidget {
  const MyFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello World!',
        style: TextStyle(fontFamily: 'FontSec', fontSize: 21),
      ),
    );
  }
}
