import 'package:flutter/material.dart';

class MyCenter extends StatefulWidget {
  const MyCenter({super.key});

  @override
  State<MyCenter> createState() => _MyCenterState();
}

class _MyCenterState extends State<MyCenter> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 100,
        color: Colors.blueGrey,
        child: Center(
          child: Text(
            'This is center of Container...',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
