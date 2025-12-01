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
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            child: Text('Text'),
          ),
        ),

        SizedBox(width: 20, height: 20),

        SizedBox.square(
          dimension: 100,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            child: Text('Text'),
          ),
        ),

        SizedBox(width: 50),

        SizedBox.square(
          dimension: 100,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            child: Text('Text'),
          ),
        ),
      ],
    );
  }
}
