import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyIconWidget extends StatelessWidget {
  const MyIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Icon(Icons.play_circle_fill_sharp, size: 50, color: Colors.orange),
            FaIcon(FontAwesomeIcons.googlePlay, size: 50),
          ],
        ),
      ),
    );
  }
}
