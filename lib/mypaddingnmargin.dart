import 'package:flutter/material.dart';

class MyPadNMarg extends StatelessWidget {
  const MyPadNMarg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      margin: EdgeInsets.all(11),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Text('Hello World', style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
