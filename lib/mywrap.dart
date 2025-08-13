import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  const MyWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Wrap(
        // direction: Axis.vertical,
        spacing: 11,
        runSpacing: 11,
        alignment: WrapAlignment.spaceBetween,
        children: [
          Container(width: 100, height: 100, color: Colors.red),
          Container(width: 100, height: 100, color: Colors.brown),
          Container(width: 100, height: 100, color: Colors.blue),
          Container(width: 100, height: 100, color: Colors.yellow),
          Container(width: 100, height: 100, color: Colors.purple),
          Container(width: 100, height: 100, color: Colors.teal),
          Container(width: 100, height: 100, color: Colors.red),
          Container(width: 100, height: 100, color: Colors.brown),
          Container(width: 100, height: 100, color: Colors.blue),
          Container(width: 100, height: 100, color: Colors.yellow),
          Container(width: 100, height: 100, color: Colors.purple),
          Container(width: 100, height: 100, color: Colors.teal),
        ],
      ),
    );
  }
}
