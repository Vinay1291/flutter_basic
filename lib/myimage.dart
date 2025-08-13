import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon'), backgroundColor: Colors.blueGrey),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset('assets/img/logo1.png'),
        ),
      ),
    );
  }
}
