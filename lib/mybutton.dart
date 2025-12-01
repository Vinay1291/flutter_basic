import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button types'),
        backgroundColor: Colors.brown,
      ),
      body: Center(child: Column(spacing: 10, children: [MTB(), MOB(), MEB()])),
    );
  }
}

class MOB extends StatelessWidget {
  const MOB({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        debugPrint('Out Line pressed.');
      },
      onLongPress: () {
        debugPrint('Out Line Long Pressed ');
      },
      child: Text('Outline Button'),
    );
  }
}

class MEB extends StatelessWidget {
  const MEB({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        debugPrint('Pressed Elevated');
      },
      onLongPress: () {
        debugPrint('Long Pressed Elevated.');
      },
      child: Text('Elevated Button'),
    );
  }
}

class MTB extends StatelessWidget {
  const MTB({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        debugPrint('Text Button Tapped!');
      },
      onLongPress: () {
        debugPrint('Long Pressed.');
      },
      child: Text("Click Me"),
    );
  }
}
