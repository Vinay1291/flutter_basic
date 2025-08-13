import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: Stack(
        children: [
          Container(width: 200, height: 200, color: Colors.blueGrey),
          Positioned(
            left: 21,
            top: 21,
            child: Container(width: 200, height: 200, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
