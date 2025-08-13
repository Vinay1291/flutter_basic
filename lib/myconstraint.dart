import 'package:flutter/material.dart';

class MyConstraint extends StatefulWidget {
  const MyConstraint({super.key});

  @override
  State<MyConstraint> createState() => _MyConstraint();
}

class _MyConstraint extends State<MyConstraint> {
  @override
  Widget build(BuildContext constext) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 300,
        minWidth: 200,
        maxHeight: 300,
        minHeight: 100,
      ),
      child: ElevatedButton(onPressed: () {}, child: Text('Click')),
    );
  }
}
