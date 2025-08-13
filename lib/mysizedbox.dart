import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  const MySizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: [
        SizedBox.square(
          dimension: 100,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Text'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
          ),
        ),

        SizedBox(width: 20, height: 20),

        SizedBox.square(
          dimension: 100,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Text'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
          ),
        ),

        SizedBox(width: 50),

        SizedBox.square(
          dimension: 100,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Text'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
          ),
        ),
      ],
    );
  }
}
