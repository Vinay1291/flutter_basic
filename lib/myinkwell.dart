import 'package:flutter/material.dart';

class MyInkWell extends StatelessWidget {
  const MyInkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(
          onTap: () {
            debugPrint('Tapped on Container');
          },
          onDoubleTap: () {
            debugPrint('Double Tapped');
          },
          onLongPress: () {
            debugPrint('Long presed.');
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: Center(
              child: InkWell(
                onTap: () => debugPrint('Text widget Tapped.'),
                child: Text(
                  'Click Here',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
