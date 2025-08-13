import 'package:flutter/material.dart';

class MyPositioned extends StatelessWidget {
  const MyPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey,
      child: Stack(
        children: [
          Positioned(
            bottom: 100,
            right: 100,
            child: Container(height: 100, width: 100, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
