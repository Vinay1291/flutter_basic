import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui_helper/util.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.blue,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Hello World!', style: mTextStyle30()),
          ),
        ),
      ),
    );
  }
}
